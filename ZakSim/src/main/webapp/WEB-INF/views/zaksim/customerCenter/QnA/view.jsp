<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../../main/header.jsp" %>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/customerCenter/qna_view.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

	<!-- body -->
	<div class="py-3">
		<div class="container">
			<div class="row">
				<label class="col-md-1"> </label>
				<div class="col-md-11">
					<h1>Q&amp;A</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="py-2">
		<div class="container">
			<div class="row">
				<label class="col-md-1"> </label>
				<div class="col-md-10">
					<div class="table table-responsive">
						<table class="table">
						<c:choose>
							<c:when test="${view.upperIdx eq 0 }">
							<tbody>
								<tr>
									<th class="qnaColor">글번호</th>
									<td>${view.idx }</td>
									<th class="qnaColor">조회수</th>
									<td>${view.hit }</td>
								</tr>
								<tr>
									<th class="qnaColor">작성자</th>
									<td>${view.writerIdx }</td>
									<th class="qnaColor">작성일</th>
									<td><fmt:formatDate value="${view.writtenDate }" pattern="yyyy-MM-dd HH:mm"/></td>
								</tr>
								<tr>
									<th class="qnaColor">제목</th>
									<c:if test="${view.secret eq 'private' }">
										<td>${view.title } <i class="fas fa-lock"></i></td>
									</c:if>
									<c:if test="${view.secret eq 'public' }">
										<td>${view.title }</td>
									</c:if>
									<th class="qnaColor">상태</th>
									<c:if test="${view.status eq 'ready' }">									
										<td>접수 중</td>
									</c:if>
									<c:if test="${view.status eq 'complete' }">									
										<td>답변 완료</td>
									</c:if>
								</tr>
								<tr style="height: 500px">
									<th class="qnaColor">글 내용</th>
									<td colspan="3">${view.content }</td>
								</tr>
								<tr>
									<th class="table-info">파일</th>
									<td colspan="3">파일이 없음</td>
								</tr>
								<tr>
									<td colspan="4" class="text-center">
										<input type="button" class="btn btn-secondary" id="btnQnaWrite" value="답글 쓰기" onclick="qnaWritePage()">
										<input type="button" class="btn btn-secondary" id="btnQnaUpdate" value="수정하기" onclick="qnaUpdatePage()"> 
										<input type="button" class="btn btn-danger" id="btnQnaDelete" value="삭제하기" onclick="qnaDeleteProcess()"> 
										<input type="button" class="btn qnaBtnColor" id = btnQnaList value="목록보기" onclick="qnaListPage()">
									</td>
								</tr>
							</tbody>
							</c:when>
							
							<c:when test="${view.upperIdx ne 0 }">
							<!-- 답변 글일 경우 -->
							<tbody>
								<tr>
									<th class="qnaColor">글번호</th>
									<td>${view.idx }</td>
									<th class="qnaColor">조회수</th>
									<td>${view.hit }</td>
								</tr>
								<tr>
									<th class="qnaColor">작성자</th>
									<td>${view.writerIdx }</td>
									<th class="qnaColor">작성일</th>
									<td><fmt:formatDate value="${view.writtenDate }" pattern="yyyy-MM-dd HH:mm"/></td>
								</tr>
								<tr>
									<th class="qnaColor">제목</th>
									<c:if test="${view.secret eq 'private' }">
										<td>${view.title } <i class="fas fa-lock"></i></td>
									</c:if>
									<c:if test="${view.secret eq 'public' }">
										<td>${view.title }</td>
									</c:if>
									<th class="qnaColor">문의글</th>
									<td><a href="/zaksim/customerCenter/QnA/view?qnaIdx=${view.upperIdx }">${view.upperIdx }</a></td>
								</tr>
								<tr style="height: 500px">
									<th class="qnaColor">글 내용</th>
									<td colspan="3">${view.content }</td>
								</tr>
								<tr>
									<td colspan="4" class="text-center">
										<input type="button" class="btn btn-secondary" id="btnQnaWrite" value="답글 쓰기" onclick="qnaWritePage()">
										<input type="button" class="btn btn-secondary" id="btnQnaUpdate" value="수정하기" onclick="qnaUpdatePage()"> 
										<input type="button" class="btn btn-danger" id="btnQnaDelete" value="삭제하기" onclick="qnaDeleteProcess()"> 
										<input type="button" class="btn qnaBtnColor" id = btnQnaList value="목록보기" onclick="qnaListPage()">
									</td>
								</tr>
							</tbody>
							</c:when>
						</c:choose>
						</table>
					</div>
				</div>
				<label class="col-md-1"> </label>
			</div>
		</div>
	</div>
	<!-- 댓글 입력 영역  -->
	<div class="container">
		<div class="row">
			<label class="col-md-1"> </label>
			<div class="col-md-10">
				<div class="card">
					<form action="/zaksim/customerCenter/QnA/comment_write" method="post">
						<div class="form-group card-header">
							<label style="font-weight: bold">${login_nick }</label>
						</div>
						<div class="form-group ">
							<input style="display: none;" name="qnaIdx" value="${view.idx}"/>
							<input type="text" class="form-control" id="boardNo"
								name="boardNo" value="${board.boardNo }" readonly=""
								hidden="true">
						</div>
						<div class="card-body">
							<div class="form-group">
								<c:choose>
									<c:when test="${login}">
										<textarea rows="3" class="form-control" id="replyContent"
											name="replyContent" placeholder="댓글을 입력해주세요."></textarea>
									</c:when>
									<c:when test="${!login || login eq null}">
										<textarea rows="3" class="form-control" id="replyContent"
											name="replyContent" placeholder="로그인 상태여야 입력 가능합니다."
											readonly=""></textarea>
									</c:when>
								</c:choose>
							</div>
							<c:if test="${sessionScope.login}">
								<button type="submit" class="btn qnaBtnColor btn-md mr-1">댓글 입력</button>
							</c:if>
						</div>
					</form>
				</div>
			</div>
			<label class="col-md-1"> </label>
		</div>
		
		
		
<!-- 		댓글 목록 영역 -->
		<div style="margin-bottom: 8rem;">
			<c:forEach items="${commentList}" var="comment">
			<div class="row mt-3 justify-content-center">
				<label class="col-md-1"> </label>
				<div class="col-md-10">
					<ul class="list-group">
						<li class="list-group-item">
							<div class="d-flex w-100 justify-content-between">
								<div>
									<p style="display: none;">${comment.idx}</p>
									<p style="display: none;">${comment.writerIdx}</p>
									<strong style="font-weight: 700 !important;">${comment.zakSimMember.id}</strong>
									<small class="ml-4"><fmt:formatDate pattern = "yyyy-MM-dd" value = "${comment.writtenDate}" /></small>
									<small><fmt:formatDate type="time" timeStyle="short" value = "${comment.writtenDate}"/></small>
								</div>
								
								<div>
									<c:if test="${sessionScope.login_idx ne null }">
										<c:if test="${sessionScope.login_idx eq comment.writerIdx}">
											<small> <a href="" style="color: blue">수정</a> </small>
											<small class="ml-1"> <a href="" style="color: red">삭제</a> </small>						
										</c:if>
										<small class="ml-1"> <a href="" style="color: green">답댓글쓰기</a> </small>
									</c:if>
								</div>
							</div>
							<div>
								<p class="mb-1">${comment.content}</p>
							</div>
						</li>
					</ul>
				</div>
				<label class="col-md-1"> </label>
			</div>
			</c:forEach>
		</div>
		
		
	</div>

<%@ include file="../../main/footer.jsp" %>

<script type="text/javascript">
	document.getElementById("btnQnaList").onclick = function(){qnaListPage()};
	document.getElementById("btnQnaWrite").onclick = function(){qnaWritePage()};
	document.getElementById("btnQnaUpdate").onclick = function(){qnaUpdatePage()};

	var qnaIdx = <%=request.getParameter("qnaIdx") %>;
		
	function qnaListPage(){
		var curPage = <%=session.getAttribute("curPage") %>;
		if (curPage == "" || curPage == null) {
			curPage = 1;
			location.href = "/zaksim/customerCenter/QnA/list?curPage=" + curPage;
		} else {
			location.href = "/zaksim/customerCenter/QnA/list?curPage=" + curPage;			
		}
	}
	
	function qnaWritePage(){
		console.log("답변할 문의글 인덱스 : " + qnaIdx);
		
		location.href = "/zaksim/customerCenter/QnA/write?upperIdx=" + qnaIdx;
	}	
	
	function qnaUpdatePage(){
		console.log("수정할 문의글(답변) 인덱스 : " + qnaIdx);
		
		location.href = "/zaksim/customerCenter/QnA/update?qnaIdx=" + qnaIdx;
	}
	
	function qnaDeleteProcess() {
		console.log("삭제할 문의글(답변) 인덱스 : " + qnaIdx);
		
		location.href = "/zaksim/customerCenter/QnA/delete?qnaIdx=" + qnaIdx;
	}
</script>