<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="row text-dark pb-3" style="background-color: #dcdcdc70;">
        <div class="col-md-1"></div>
        <div class="col-md-10 rounded" style="height: 530px; background-color: rgba(33, 33, 33, 0.67);">
          <div class="col-md-12 text-center my-5 text-white dohyeon">
            <h2> ${sessionScope.login_nick} 의</h2>
            <h3> 새로운 도전 시작 </h3>
          </div>
          <div class="row " style="background-color: rgba(154, 28, 15, 0.5);"> 
          	<div class="col-md-12">
          		<div class="row justify-content-center">
          			<h5 class="my-2 dohyeon" style="color: white;">멋진 도전을 시작해 보세요.</h5>
          		</div>
          	</div>
          </div>
          <div class="row" style="margin-top: 4rem;">
            <div class="col-md-4 mt-3 text-white" >
              <p class="text-right mt-3 "> 도전 명 : </p>
              <p class="text-right mt-4"> 도전 시작일 : </p>
              <p class="text-right mt-4"> 도전 종료일 : </p>
            </div>
            <form id="doChal" class="col-md-6" >
              <input class="form-control mt-3 " name="title" type="text" placeholder="도전할 목표을 입력하세요." maxlength="100" required="required">
              <input class="form-control mt-3" id="startDate" name="startDate" type="text" placeholder="도전 시작일" required="required" style="cursor: pointer;">
              <input class="form-control mt-3" id="endDate" name="endDate" type="text" placeholder="도전 종료일" required="required" style="cursor: pointer;">
              <div class="row">
	              <button type="button" onclick="toPriceChallenge();" class="btn text-white btn-lg dohyeon" value="도전글 설정" style="background-color: rgb(187, 68, 56); margin-top: 30px; margin-left: 90px;">도전금 설정</button>              
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-1"></div>
      </div>


