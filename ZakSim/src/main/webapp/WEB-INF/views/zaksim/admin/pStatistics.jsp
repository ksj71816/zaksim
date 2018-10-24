<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ZakSim admin</title>
<style>
@font-face {
	font-family: Dohyeon;
	src: url('/resources/fonts/BMDOHYEON_ttf.ttf');
}
@font-face {
	font-family: HannaAir;
	src: url('/resources/fonts/BMHANNAAir_ttf.ttf');
}
</style>

<style>
body {
	font-family: "Lato", sans-serif;
}

/* Fixed sidenav, full height */
.sidenav {
	height: 100%;
	width: 250px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: white;
	overflow-x: hidden;
	padding-top: 20px;
	border-right: 2px solid #ccc;
}

/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	font-family: Dohyeon !important;
	font-size : 20px;
	font-weight: 300;
	color: #818181;
	display: block;
	border: none;
	background: none;
	width: 100%;
	text-align: left;
	cursor: pointer;
	outline: none;
	font-size: 20px;
}

/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
	color: #a81919;
}

.sidenav-a:hover {
	text-decoration: none;
}

.dropdown-container a:hover {
	text-decoration: none;
}

/* Main content */
.main {
	margin-left: 250px;
	margin-top: 120px;
/* 	font-size: 20px; /* Increased text to enable scrolling */ */
	padding: 0px 10px;
}

/* Add an active class to the active dropdown button */
.active {
	color: #a81919;
}

/* Dropdown container (hidden by default). Optional: add a lighter background color and some left padding to change the design of the dropdown content */
.dropdown-container {
	display: none;
	background-color: white;
	padding-left: 8px;
}

/* Optional: Style the caret down icon */
.fa-caret-down {
	float: right;
	padding-right: 8px;
}

/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.sidenav-a {
	margin-bottom: 10px;
}
</style>

<style>

.data-title {
	font-family: Dohyeon !important;
	font-size: 30px;
	padding-left: 40px;
	padding-right: 40px;
	border-bottom: 4px solid #a81919;
}

.data-subTitle {
	font-family: Dohyeon !important;
	font-size: 20px;
	padding-left: 40px;
	padding-right: 40px;
	border-bottom: 3.5px solid #a81919;
}

.btn-zaksim {
	background-color: #a81919;
	color: white;
}

.dropdown-item {
   font-size: 0.8571em;
}

.badge {
	padding: 0.5em 0.8em !important;
}

.badge-secondary {
	background-color: #c7c7c7 !important;
}

.page-item {
	background-color:transparent !important;
}

.page-item .page-link{
    border: 0;
    border-radius: 30px ;
  	color: #2c2c2c;
    padding: 0px 11px;
    margin: 0 3px;
    min-width: 30px;
    text-align: center;
    height: 30px;
    line-height: 30px;
}

.page-item.active .page-link{
	background-color: #a81919 !important;
}

.active > a {
	color:white !important;
	box-shadow: 0px 5px 35px 0px rgba(0, 0, 0, 0.3);
}

.dropdown-menu a:active {
	background-color: #a81919 !important;
}

</style>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.1.3.css">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

</head>
<body>

<!-- navbar -->
	<nav class="navbar navbar-expand-lg fixed-top" style="background-color: #8A0303;">
		<a href="" class="btn" style="font-size: xx-large; font-weight: bold; color: white;">ZakSim</a>
		<div class="collapse navbar-collapse justify-content-end">
			<a href="/zaksim/admin/logout" style="font-weight: bold; color: white;">LOGOUT</a>
		</div>
	</nav>
<!-- navbar -->
	
	


<!-- sidenav -->
	<div class="sidenav" style="margin-top: 50px;">
		<div class="row" style="margin-top: 50px;">
			<div class="col-2"></div>
				<div class="col-8">
				<img class="img-fluid d-block rounded-circle" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" >
				</div>
				<div class="col-2"></div>		
		</div>
		<div class="row text-center" style="margin-top: 15px; margin-bottom: 80px;">
			<div class="col-12"><p>ID or Name</p></div>
		</div>
		<a class="sidenav-a" href="/zaksim/admin/member">회원 관리</a>
		<a class="sidenav-a" href="/zaksim/admin/payment">결제 관리</a>
		<button class="dropdown-btn">
			통계 / 그래프 <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-container">
			<a href="/zaksim/admin/mStatistics">회원</a>
			<a href="/zaksim/admin/cStatistics">도전</a>
			<a href="/zaksim/admin/pStatistics">수익</a>
		</div>
	</div>
<!-- sidenav -->

	



<!-- main -->
	<div class="container-fluid">
		<div class="main">
		
 			<div class="row justify-content-center">
				<p class="data-title mt-3">통계 / 그래프</p>
 			</div>
 			
 			<div class="row mt-3">
 				<div class="col-4">
 					<div class="row justify-content-end">
 						<p class="data-subTitle" style="border-color: #ccc !important;">회원</p>
 					</div>
 				</div>
 				<div class="col-4">
 					<div class="row justify-content-center">
		 				<p class="data-subTitle" style="border-color: #ccc !important;">도전</p>
 					</div>
 				</div>
 				<div class="col-4">
 					<div class="row justify-content-start">
 						<p class="data-subTitle">수익</p>
 					</div>
 				</div>
 			</div>
		
		
		
		
			<div class="row mt-5">
				<div class="col-1"></div>
				<div class="col-5">
					<div class="row justify-content-start">
						<span class="badge badge-secondary badge-pill mr-1 pl-3 pr-3" >오늘</span>
						<span class="badge badge-secondary badge-pill mr-1 pl-3 pr-3" >어제</span>
						<span class="badge badge-secondary badge-pill mr-1" >최근 7일</span>
						<span class="badge badge-secondary badge-pill mr-1" >최근 30일</span>
					</div>
				</div>
				<div class="col-6"></div>
			</div>
			
			<div class="row mt-1">
				<div class="col-1"></div>
				<div class="col-11">
					<div class="row">
						<form class="form-inline">
							<input class="form-control form-control-sm" type="date" style="width: 150px;"/>
							<p class="mb-0 pl-1 pr-1"> ~ </p>
							<input class="form-control form-control-sm" type="date" style="width: 150px;"/>
							<button type="button" class="btn btn-sm ml-1" style="background-color: gray !important; color: white;">확인</button>
						</form>
					</div>
					
				</div>
			</div>	
			
			<div class="row mt-3 mr-2">
				<div class="col-1"></div>
				<div class="col-4 border">
					<div class="row justify-content-center pt-2">
						<p class="mt-3" style="font-size: 70px; font-family: Dohyeon;">55</p>
					</div>
					<div class="row justify-content-center mb-3">
						<p style="font-family: Dohyeon;">가입 인원</p>
					</div>
				</div>
				<div class="col-6 border ml-2">
					그래프
				</div>
				<div class="col-1"></div>
			</div>
			
			<div class="row" style="margin-top: 120px;">
				<div class="col-11">
					<div class="row justify-content-end">
						<button class="btn btn-success" style="background-color: green !important; margin-right: 15px;">
							<i class="fas fa-file-excel"></i> 엑셀 다운로드 
						</button>
					</div>
				</div>
				<div class="col-1"></div>
			</div>
			
			
			<!-- table -->
			<div class="row mb-5" style="margin-top: 15px;">
				<div class="col-1"></div>
				<div class="col-10 table-responsive-xl">
					<table class="table table-hover text-center">
						<thead>
							<tr>
								<th>날짜</th>
								<th>총 회원수</th>
								<th>가입 인원</th>
								<th>탈퇴 인원</th>
								<th>방문수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>10</td>
								<td>type</td>
								<td>id</td>
								<td>nick</td>
								<td>name</td>
							</tr>
							<tr>
								<td>9</td>
								<td>type</td>
								<td>id</td>
								<td>nick</td>
								<td>name</td>
							</tr>
							<tr>
								<td>8</td>
								<td>type</td>
								<td>id</td>
								<td>nick</td>
								<td>name</td>
							</tr>
							<tr>
								<td>7</td>
								<td>type</td>
								<td>id</td>
								<td>nick</td>
								<td>name</td>
							</tr>
							<tr>
								<td>6</td>
								<td>type</td>
								<td>id</td>
								<td>nick</td>
								<td>name</td>
							</tr>
							<tr>
								<td>5</td>
								<td>type</td>
								<td>id</td>
								<td>nick</td>
								<td>name</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-1"></div>
			</div>
			<!-- table -->
			
          
		</div>
	</div>
<!-- main -->


	<script>
		/* When the user scrolls down, hide the navbar. When the user scrolls up, show the navbar */
		var prevScrollpos = window.pageYOffset;
		window.onscroll = function() {
			var currentScrollPos = window.pageYOffset;
			if (prevScrollpos > currentScrollPos) {
				document.getElementById("navbar").style.top = "0";
			} else {
				document.getElementById("navbar").style.top = "-50px";
			}
			prevScrollpos = currentScrollPos;
		}

		/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>


	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>