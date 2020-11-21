<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/temp.css">
<link rel="stylesheet" href="./css/sidebar.css">
<style type="text/css">
#title {
	border-bottom: solid 1px #ddd;
	padding-bottom: 10px;
}

#title strong {
	font-size: 21px;
}
.middle {
	color: #5d5d5d;
}

#title img {
	width: 250px;
	height: 350px;
	margin-right: 30px;
/* 	margin-bottom: 30px; */
}
#img {
	float: left;
}

#content {
	display: table-cell;
	height: 300px;
	width: 400px;
}

#main h3 {
	border-left: solid 5px #94CCC4;
	padding-left: 20px;
}

#main {
/* 	padding-left: 5%; */
/* 	padding-right: 5%; */
	color: #5d5d5d;
	margin-top: 20px;
/* 	padding-top: 20px; */
	font-family: 맑은 고딕;
}

#main table {
	width: 100%;
	text-align: center;
	border-collapse: collapse;
}

#main td {
/* 	text-align: left; */
	height: 40px;
	padding: 20px;
	border-bottom: solid 2px #ddd;
}

#main th {
	background-color: #94CCC4;
	color: white;
	height: 40px;
	border: solid 2px white;
}

.period {
	width: 30%;
}

.car {
	margin-top: 40px;
}
.edu {
	margin-top: 40px;
}

#bot {
	float: right;
	margin-top: 30px;
}

.info table {
	width: 100%;
	text-align: left;
	margin-top: 10px;
}
.info td {
	padding-top: 10px;
}
.info th {
	padding-top: 10px;
}

.sche h3 {
	margin-top: 20px;
	border-left: solid 5px #94CCC4;
	padding-left: 20px;
}
.sche table {
	border-collapse: collapse;
	text-align: center;
}
.sche th {
	background-color: #94CCC4;
	color: white;
	border: solid 1px white;
}

.sche td {
	border: solid 1px #ddd;
}

.middle button {
	margin-left: 10px;
	height: 30px;
	background-color: #94CCC4;
	
	  border: none;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  transition-duration: 0.4s;
	  cursor: pointer;
}

.middle button:hover {
  background-color: white;
  color: #94CCC4;
}

.cbot {
	float: right;
	margin-top: 10px;
}

#title table {
	width: 100%;
	
}
</style>
<!-- <script type="text/javascript"> -->
<!-- $(function(){ -->
	
<!-- }) -->
<!-- </script> -->
</head>
<body>
<!-- Header Start -->
<%--      <jsp:include page="/header.jsp"></jsp:include> --%>
<!-- 	Header End -->

<div class="row">
  <div class="column side">
    <!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">의료진/진료과</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">진료과</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="/listDoctor">의료진</a></li>
		  <li class="side_li"><a href="">의료과 검색</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  </div>
  <div class="column middle">
  	<div id="title">
  	
  	
  	
  	<!-- ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ -->
  	<!-- 여기에 실험. 1프로필 2스케줄 3경력 4학력 -->
  	<div id="test1">
  	사진출력 <img src="./image/${d.doc_fname }" width="50" height="50">
  	이름 : ${d.doc_name }<br>
  	진료과 : ${d.major }<br>
  	직급 : ${d.position }<br>
  	세부전공 : ${d.specialization }
  	</div>
  	
  	
  	
  	
  	<div id="test2"><br> <!-- 스케줄 -->
  	스케줄 일단 출력해봄<br>
  	<c:forEach var="sch" items="${dsche }"> <!-- 컨트롤러에서 의사의 스케줄정보가 담긴 모델을 받아와 sch라는 이름으로 써먹을예정 -->
  	<!-- 반복문 내의 각 스크립트마다 $(function)이 있는건 테이블 생성 후 스케줄이 기입되어야해서 순서를 뒤로 밀어내기위함 -->
	  	<script type="text/javascript">
	  	$(function(){
	  		var apm = ""; //오전 오후 근무를 담을 변수
			var day = ""; //요일 근무를 담을 변수
	  	})	
	  	</script>
 	<c:if test="${sch.am_pm == '오전' }"> <!-- db에 am_pm컬럼에 들어있는 값이 오전일때 -->
 		<script type="text/javascript">
 		$(function(){
			apm = "a";
// 			console.log(apm)
 	 	})
 		</script>
 	</c:if>
 	<c:if test="${sch.am_pm == '오후' }">
 		<script type="text/javascript">
 		$(function(){
 			apm = "p";
// 			console.log(apm)
 	 	})	
 		</script>
	</c:if>
	<c:if test="${sch.workday =='월' }"> <!-- db에 workday컬럼의 값이 월 일때. -->
 		<script type="text/javascript">
 		$(function(){
 			day = "m"
//  	 		console.log(day)
 	 	})	
 	 	</script>
 	</c:if>
 	<c:if test="${sch.workday =='화' }">
 		<script type="text/javascript">
 		$(function(){
 			day = "t"
//  	 	 	console.log(day)
 	 	})	
 	 	</script>
 	</c:if>
	<c:if test="${sch.workday =='수' }">
 		<script type="text/javascript">
 		$(function(){
 			day = "w"
//  	 	 	console.log(day)
 	 	})	
 	 	</script>
 	</c:if>
 	<c:if test="${sch.workday =='목' }">
 		<script type="text/javascript">
 		$(function(){
 			day = "th"
//  	 		console.log(day)
 	 	})	
 	 	</script>
 	</c:if>
 	<c:if test="${sch.workday =='금' }">
 		<script type="text/javascript">
 		$(function(){
 			day = "f"
//  	 		console.log(day)
 	 	})	
 	 	</script>
 	</c:if>
 	<c:if test="${sch.workday =='토' }">
 		<script type="text/javascript">
 		$(function(){
 			day = "s"
//  	 		console.log(day)
 	 	})	
 	 	</script>
 	</c:if>
 	
 	<script type="text/javascript">
 		$(function(){
 			var str = day+apm; //월요일 오전이면 wa, 금요일 오후면 fp
//  	 		console.log(str)
//  	 		console.log(typeof str)
 	 		var schedule = document.getElementById(str) //근무표에 맞는 테이블 칸을 찾아 바라보게한다
 	 		$(schedule).html("O") //표시
 	 	})
	 </script>
  	</c:forEach> <!-- 반복문 내의 각 스크립트마다 $(function)이 있는건 테이블 생성 후 스케줄이 기입되어야해서 순서를 뒤로 밀어내기위함 -->
  	
  	<table id="scheduletest" border='1'>
  		<thead>
  		<tr>
  			<td>ㅇ</td>
  			<td>월</td>
  			<td>화</td>
  			<td>수</td>
  			<td>목</td>
  			<td>금</td>
  			<td>토</td>
  		</tr>
  		</thead>
  		<tbody>
  		<tr>
  			<td>오전</td>
  			<td id="ma"></td>
  			<td id="ta"></td>
  			<td id="wa"></td>
  			<td id="tha"></td>
  			<td id="fa"></td>
  			<td id="sa"></td>
  		</tr>
  		<tr>
  			<td>오후</td>
  			<td id="mp"></td>
  			<td id="tp"></td>
  			<td id="wp"></td>
  			<td id="thp"></td>
  			<td id="fp"></td>
  			<td id="sp"></td>
  		</tr>
  		</tbody>
  	</table>
  	</div>
  	
  	
  	
  	
  	<div id="test3"><br> <!-- 경력 -->
  	<table border='1'>
  		<tr>
  			<td>기간</td>
  			<td>내용</td>
  		</tr>
  	<c:forEach var="c" items="${dcar }">
  		<tr>
  			<td>${c.car_sdate } ~ ${c.car_edate }</td>
  			<td>${c.car_content }</td>
  		</tr>
  	</c:forEach>
  	</table>
  	</div>
  	
  	
  	
  	
  	<div id="test4"><br> <!-- 학력 -->
  		<table border='1'>
  		<tr>
  			<td>기간</td>
  			<td>내용</td>
  		</tr>
  		<c:forEach var="e" items="${dedu }">
  		<tr>
  			<td>${e.edu_sdate } ~ ${e.edu_edate }</td>
  			<td>${e.edu_content }</td>
  		</tr>
  	</c:forEach>
  	</table>
  	</div>
  	<!-- ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ -->
  	
  		<div id="img">
	  		<img alt="" src="./image/yu.jpg">
  		</div>
  		<div id="content">
  			<h2>의사소개_<span id="dept">호흡기내과</span></h2>
<!--   			<p> -->
  				<div class="info">
	  				<strong>유철규</strong><span> 교수</span>
	  				<table>
	  					<tr>
	  						<th>진료과</th>
	  						<td>호흡기 내과</td>
	  					</tr>
	  					<tr>
	  						<th>직급</th>
	  						<td>과장</td>
	  					</tr>
	  					<tr>
	  						<th>세부전공</th>
	  						<td>폐렴, 기관지염</td>
	  					</tr>
	  				</table>
  				</div>
  				<div class="sche">
  					<h3>진료일정</h3>
  					<table>
  						<tr>
  							<th>구분</th>
  							<th>월</th>
  							<th>화</th>
  							<th>수</th>
  							<th>목</th>
  							<th>금</th>
  							<th>토</th>
  						</tr>
  						<tr>
  							<th>오전</th>
  							<td></td>
  							<td></td>
  							<td>O</td>
  							<td>O</td>
  							<td></td>
  							<td></td>
 						</tr>
 						<tr> 
 							<th>오후</th>
  							<td></td>
  							<td></td>
  							<td>O</td>
  							<td>O</td>
  							<td></td>
  							<td></td>
  						</tr>
  					</table>					
  				</div>
  				<div class="cbot">
  					<button>진료예약</button>
  				</div>
<!--   			</p> -->
  		</div>
  	</div>
  	
  	<div id="main">
  		<div class="car">
	  		<h3>경력사항</h3>
	  		<table>
	  			<tr>
	  				<th class="period">기간</th>
	  				<th>내용</th>
	  			</tr>
	  			<tr>
	  				<td class="period">2018/02 ~ 현재</td>
	  				<td>서울대학교 의과대학 내과 주임교수</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2014-08-08 ~ 2018-02-02</td>
	  				<td>호흡기내과 과장</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2012-08-08 ~ 2015-02-02</td>
	  				<td>호흡기내과 폐기능실장</td>
	  			</tr>
	  		</table>
  		</div>
  		<div class="edu">
	  		<h3>학력사항</h3>
	  		<table>
	  			<tr>
	  				<th class="period">기간</th>
	  				<th>내용</th>
	  			</tr>
	  			<tr>
	  				<td class="period">2018/02 ~ 현재</td>
	  				<td>서울대학교 의과대학 내과학 의학박사</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2014-08-08 ~ 2018-02-02</td>
	  				<td>서울대학교 의과대학 내과학 의학석사</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2012-08-08 ~ 2015-02-02</td>
	  				<td>서울대학교 의과대학 의학사</td>
	  			</tr>
	  		</table>
  		</div>
  		<div id="bot">
  		<a href="/listDoctor">
  			<button>의료진 목록</button>
  			</a>
  		</div>
  	</div>
  </div>
  <div class="column side"></div>
</div>

<%-- <jsp:include page="/footer.jsp"></jsp:include> --%>
</body>
</html>