<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- header include -->
<%@include file="/WEB-INF/views/zaksim/main/header.jsp" %>


<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">

<!-- 캘린더 스타일 추가 -->
<link rel="stylesheet" href="/css/challenge/calendar.css">
  

  <!--바디-->
   
   <div class=" pt-5" style="background-image: url(/resources/image/main/back.webp); 
   background-color: rgba(240, 200, 240, 0.7);">
    <div class="container">
      <div class="row  py-4">
        <div class="col-md-4" >
          <img class="img-fluid d-block my-2 rounded-circle float-right" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" style="	height: 140px; width: 140px;	border-right-width: 3px;	border-top-width: 3px;	border-bottom-width: 3px;    border-left-width: 3px;	border-style: solid;	border-color: white;">
        </div>
        <div class="col-md-6 row" >
          <div class="col-md-12 mt-2 mx-3 text-center">
            <h4>${sessionScope.login_nick }의 <b class="text-danger">도전 24일차</b></h4>
          </div>
       <div class=" mx-3 col-md-12" style=" height:70px;"> 
		
		<div class="m-0">
		<h6 class="mt-1"><b>도전 인증률</b></h6>
		<div class="progress mb-2" style="height: 25px; border-right-width: 1px;	border-top-width: 1px;	border-bottom-width: 1px;    border-left-width: 1px;	border-style:solid;	border-color: white;"> 
		    <div class="progress-bar progress-bar-striped progress-bar-animated active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:${100*rate.boardNum/rate.dateNum}%">
		       ${100*rate.boardNum/rate.dateNum}%
		    </div>
		</div>
		</div>
		
	</div>
        </div>
        <div class="col-md-2" >
        </div>     
       </div>
    </div>
  </div>
  
  
  
  <div class="py-1" style="background-image: url(/resources/image/main/back.webp); 
   background-color: rgba(240, 200, 240, 0.7);">
    <div class="container " >
      <hr class="my-5">
      <div class="row  py-3">
        <div class="col-md-2">
        </div>
        <div class="col-md-8 col-lg-8 rounded  text-center" style="background-color: blanchedalmond;    border-right-width: 5px;	border-top-width: 5px;	border-bottom-width: 5px;    border-left-width: 5px;	border-style: solid;	border-color: white;">
         
         
          <h4 class="text-center my-2 mb-4">도전 정보</h4>
          <hr style="border:2px white solid;"> 
        
             <a class="my-2 d-flex justify-content-center align-items-end">  <h5 class="mb-0 text-danger"> <fmt:formatDate value="${info.startDate}" pattern="yyyy-MM-dd"/></h5>&nbsp;부터&nbsp; 
         		<h5 class="mb-0 text-danger"><fmt:formatDate value="${info.endDate}" pattern="yyyy-MM-dd"/></h5>&nbsp;까지 </a>
         
         	 <a class="my-2 d-flex justify-content-center align-items-end"> 도전금&nbsp;<h4 class="mb-0 text-info"> ${info.money}원</h4>을 걸고</a>
          
        	 <a class="my-2 d-flex justify-content-center align-items-end"><h5 class="mb-0 text-danger"><b>${info.title}</b></h5>&nbsp;도전중 </a>  
           
          	 <a class="btn btn-sm w-25 my-4 text-white" href="/zaksim/challenge/citation" style="background-color: #962424"> 도전 인증 </a>
        
        
        </div>
        <div class="col-md-2">
  
        </div>
      </div>
      <hr class="my-5">
    </div>
  </div>
  
  
  <div class="py-3 pb-5" style="background-image: url(/resources/image/main/back.webp); 
   background-color: rgba(240, 200, 240, 0.7);">
    <div class="container mb-5 ">
      <div class="row mb-5">
      
        <div class="col-md-5 px-0">
     
      	<!-- 캘린더 추가 -->
			<div class="m-1" id="pnlEventCalendar" style="width:100%; height: 334.667px; border-right-width: 5px;	border-top-width: 5px;	border-bottom-width: 5px;    border-left-width: 5px;	border-style: solid;	border-color: firebrick;"></div>
			
			<!-- 제거 예정 테스트용 -->
			 <p>(테스트)캘린더 입력 값: <b><span id="lblEventCalendar">[date]</span></b></p>
		<!-- 캘린더 끝 -->  
        
        </div>
        
        <div class="col-md-1">
        </div>
        <div class="col-md-6 h-50 p-0" style="border-right-width: 5px;	border-top-width: 5px;	border-bottom-width: 5px;    border-left-width: 5px;	border-style: solid;	border-color: white; ">
          <div id="myCarousel" class="carousel slide rounded border" data-ride="carousel" style="height: 337px;">
            <!-- Indicators -->
            <ul class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1" class=""></li>
              <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ul>
            <!-- The slideshow -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="https://picsum.photos/500/300/?image=135" alt="Los Angeles" style="width: 100%; height: 100%;">
              </div>
              <div class="carousel-item">
                <img src="https://picsum.photos/500/300/?image=136" alt="Chicago" style="width: 100%; height: 100%;">
              </div>
              <div class="carousel-item">
                <img src="https://picsum.photos/500/300/?image=137" alt="New York" style="width: 100%; height: 100%;">
              </div>
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>
          </div>
        </div>
      </div>
      
       <hr class="my-5">
      
      
        <div class="row mb-5 ">
           <!-- 구현 못해서 주석
           <div class="col-md-6 text-center">
           
            <c:if test="${sessionScope.status eq 'ing' }">
                <a class="btn btn-lg  my-4 ml-0 btn-primary text-white " href="/zaksim/challenge/vow">서약서 작성</a>
            </c:if>
            
            <c:if test="${sessionScope.status ne 'ing' }">
                <a class="btn btn-lg  my-4 ml-0 btn-primary text-white " href="#modal">서약서 확인</a>
            </c:if>
            
            </div>
             -->
          <c:if test="${status eq 'halt'}">   
            <div class="col-md-12 text-center"> 
                <a class="btn btn-lg my-4 ml-0 btn-dark text-white " onclick="haltAlert();">도전 취소</a>
            </div>
          </c:if>  
            
          <c:if test="${status eq 'done'}">   
            <div class="col-md-12 text-center"> 
                <a class="btn btn-lg my-4 ml-0 btn-dark text-white " onclick="doneAlert();">도전 포기</a>
            </div>
          </c:if>  
            
            
        </div>
      
    </div>
  </div>

   
 <!--바디 끝-->
    



   <!-- footer include -->
        
<%@include file="/WEB-INF/views/zaksim/main/footer.jsp" %>





<!-- 스크립트 -->


<!-- alert 라이브러리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.28.12/sweetalert2.all.js"></script>


<!-- alert 스크립트-->
<script type="text/javascript">


function doneAlert(){
	
	swal({
		  title: '도전을 포기 하시겠습니까?',
		  text: '비도전 상태로 변경되며, 인증글은 삭제되지 않습니다.',
		  type: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#2E82CC',
		  cancelButtonColor: '#FC3A3A',
		  confirmButtonText: '확인',
		  cancelButtonText: '취소'
		}).then((result) => {
		  if (result.value) {
	
			  document.location.href = "/zaksim/challenge/discard";
			  
		  }
		})
	
}

function haltAlert(){
	
	swal({
		  title: '도전을 취소 하시겠습니까?',
		  text: '도전금은 관리자 승인후 3일 이내에 환불 처리 됩니다.',
		  type: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#2E82CC',
		  cancelButtonColor: '#FC3A3A',
		  confirmButtonText: '확인',
		  cancelButtonText: '취소'
		}).then((result) => {
		  if (result.value) {
	
			  document.location.href = "/zaksim/challenge/cancel";
			  
		  }
		})
	
}



</script>




<!-- 캘린더 스크립트 -->
	<script type="text/javascript">
		
		(function ($) {
			
			$.fn.calendar = function (opts) {
				var options = $.extend({
					color: '#308B22',
					months: ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'],
					days: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
					onSelect: function (event) {}
				}, $.fn.calendar.defaults, opts);
				
				return this.each(function () {
					var currentYear, currentMonth, currentDay, currentCalendar;
					
					initCalendar($(this), options);
				});
			};
			
			function initCalendar(wrapper, options) {
				var color = options.color; 
				
				wrapper.addClass('calendar').empty();
				
				var header = $('<header>').appendTo(wrapper);
				header.addClass('calendar-header');
				header.css({
					background: color,
					color: createContrast(color)
				});
				
				var buttonLeft = $('<span>').appendTo(header);
				buttonLeft.addClass('button').addClass('left');
				buttonLeft.html(' &lang; ');
				buttonLeft.bind('click', function () { currentCalendar = $(this).parents('.calendar'); selectMonth(false, options); });
				buttonLeft.bind('mouseover', function () { $(this).css('background', createAccent(color, -20)); });
				buttonLeft.bind('mouseout', function () { $(this).css('background', color); });
				
				var headerLabel = $('<span>').appendTo(header);
				headerLabel.addClass('header-label')
				headerLabel.html(' Month Year ');
				headerLabel.bind('click', function () { 
					currentCalendar = $(this).parents('.calendar');
					selectMonth(null, options, new Date().getMonth(), new Date().getFullYear());
					
					currentDay = new Date().getDate();
					triggerSelectEvent(options.onSelect);
				});
				
				var buttonRight = $('<span>').appendTo(header);
				buttonRight.addClass('button').addClass('right');
				buttonRight.html(' &rang; ');
				buttonRight.bind('click', function () { currentCalendar = $(this).parents('.calendar'); selectMonth(true, options); });
				buttonRight.bind('mouseover', function () { $(this).css('background', createAccent(color, -20)); });
				buttonRight.bind('mouseout', function () { $(this).css('background', color); });
				
				var dayNames = $('<table>').appendTo(wrapper);
				dayNames.append('<thead><th>' + options.days.join('</th><th>') + '</th></thead>');
				dayNames.css({
					width: '100%'
				});
				
				var calendarFrame = $('<div>').appendTo(wrapper);
				calendarFrame.addClass('calendar-frame');
				
				headerLabel.click();
			}
			
			function selectMonth(next, options, month, year) {
				var tmp = currentCalendar.find('.header-label').text().trim().split(' '), tmpYear = parseInt(tmp[1], 10);
				
				currentMonth = month || ((next) ? ((tmp[0] === options.months[options.months.length - 1]) ? 0 : options.months.indexOf(tmp[0]) + 1) : ((tmp[0] === options.months[0]) ? 11 : options.months.indexOf(tmp[0]) - 1));
				currentYear = year || ((next && currentMonth === 0) ? tmpYear + 1 : (!next && currentMonth === 11) ? tmpYear - 1 : tmpYear);
				
				var calendar = createCalendar(currentMonth, currentYear, options), frame = calendar.frame();
				
				currentCalendar.find('.calendar-frame').empty().append(frame);
				currentCalendar.find('.header-label').text(calendar.label);
				
				frame.on('click', 'td', function () {
					$('td').removeClass('selected');
					$(this).addClass('selected');
					
					currentDay = $(this).text();
					triggerSelectEvent(options.onSelect);
				});
			}	
			
			function createCalendar(month, year, options) {
				var currentDay = 1, daysLeft = true,
				startDay = new Date(year, month, currentDay).getDay() - 1,
				lastDays = [31, (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31], 
				calendar = [];
				
				var i = 0;
				while(daysLeft) {
					calendar[i] = [];
					
					for(var d = 0; d < 7; d++) {
						if(i == 0) {
							if(d == startDay) {
								calendar[i][d] = currentDay++;
								startDay++;
							}
						} else if(currentDay <= lastDays[month]) {
							calendar[i][d] = currentDay++;
						} else {
							calendar[i][d] = ''; 
							daysLeft = false;
						}
						
						if (currentDay > lastDays[month]) { 
							daysLeft = false; 
						} 
					}
					
					i++;
				}
				
				var frame = $('<table>').addClass('current');
				var frameBody = $('<tbody>').appendTo(frame);
				
				for(var j = 0; j < calendar.length; j++) {
					var frameRow = $('<tr>').appendTo(frameBody);
					
					$.each(calendar[j], function (index, item) {
						var frameItem = $('<td>').appendTo(frameRow);
						frameItem.text(item);
					});
				}
				
				$('td:empty', frame).addClass('disabled');
				if(currentMonth === new Date().getMonth()) { 
					$('td', frame).filter(function () { return $(this).text() === new Date().getDate().toString(); }).addClass('today'); 
				} 
			
				return { frame: function () { return frame.clone() }, label: options.months[month] + ' ' + year };
			}
			
			function triggerSelectEvent(event) {
				var date = new Date(currentYear, currentMonth, currentDay);
					
				var label = [];
				label[0] = (date.getDate() < 10) ? '0' + date.getDate() : date.getDate();
				label[1] = ((date.getMonth() + 1) < 10) ? '0' + (date.getMonth() + 1) : date.getMonth() + 1;
				label[2] = (date.getFullYear());

				if(event != undefined) {
					event({date: date, label: label.join('.')});
				}
			}
			
			function createContrast(color) {
				if(color.length < 5) {
					color += color.slice(1);
				}
				
				return (color.replace('#','0x')) > (0xffffff) ? '#222' : '#fff';
			}
			
			function createAccent(color, percent) {
				var num = parseInt(color.slice(1),16), amt = Math.round(2.55 * percent), R = (num >> 16) + amt, G = (num >> 8 & 0x00FF) + amt, B = (num & 0x0000FF) + amt;
				return '#' + (0x1000000 + (R < 255 ? R < 1 ? 0 : R : 255) * 0x10000 + (G < 255 ? G < 1 ? 0 : G : 255) * 0x100 + (B < 255 ? B < 1 ? 0 : B : 255)).toString(16).slice(1);
			}

		}(jQuery));
		
		
		</script>
		
		
		
			<script>
			$(function () {
				$('#pnlEventCalendar').calendar({
					color: '#ff0000',
					months: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
					days: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],onSelect: function (event) {
					$('#lblEventCalendar').text(event.label);
				}});
			});
			</script>
			
