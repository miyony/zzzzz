<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="./css/temp.css">
<link rel="stylesheet" href="./css/sidebar.css">
<style type="text/css">
.main {
	display: table;
	border-bottom: solid #94CCC4 1px;
	padding: 30px;
 	justify-content: center; 
 	display: flex; 
	color: #5d5d5d;
	font-family: '맑은 고딕';
	width: 100%;
	padding-left: 10%;
	padding-right: 10%;
}

.face {
	width: 150px;
	height: 200px;
}

.info li {
	list-style: none;
	padding-bottom: 5px;
	margin-bottom: 5px;
	display: table-row;
}
.info span {
	display: table-cell;
	width: 400px;
	padding-left: 50px;
}
.info strong {
	display: table-cell;
	margin-right: 30px;
}
.info button {
	float: right;
	margin: 5px;
	color: white;
	background-color: #94CCC4;
	border-radius: 3px;
	
 	border: none;
 	text-align: center;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 16px;
  	transition-duration: 0.4s;
  	cursor: pointer;
  	padding: 5px;
}
.info button:hover {
  background-color: white;
  color: #94CCC4;
}
.info div {
	border-bottom: solid 1px #CBE2B8;
	margin-bottom: 10px;
}

.title {
	border-bottom: solid 2px #94CCC4;
	padding: 5px;
	padding-bottom: 50px;
	text-align: center;
	margin-bottom: 0px;
	color: #5d5d5d;
}

.active {
	background: #f6f7dd;
}

.title span {
/* 	background-color: #94CCC4; */
	padding: 10px;
	text-align: center;
	margin-left: 30px;
}

.title button {
	margin: 5px;
	color: white;
	background-color: #CBE2B8;
	border-radius: 3px;
	
 	border: none;
 	justify-content: center;
	display: flex;
  	text-decoration: none;
  	display: inline-block;
  	font-size: 15px;
  	transition-duration: 0.4s;
  	cursor: pointer;
  	padding: 5px;
}
.title button:hover {
  background-color: white;
  color: #5d5d5d;
}

.title input {
	height: 25px;
	text-align: center;
	color: #5d5d5d;
	border: solid 1px #CBE2B8;
}

.title strong {
	text-decoration: underline;
	color: #94CCC4;
}

</style>
<title>율제대병원 의료진 목록</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function () {
// 	$(".main").hover(function () {
// 		$(this).addClass("active");
// 	}, function () {
// 		$(this).removeClass("active");		
// 	});



var num; //버튼 클릭할때마다 바뀌어야될 변수라서 전역으로 사용할거라 바깥으로 빼둠.

	var list = function(){ //각 과마다 목록을 불러오는 함수
	
	$.ajax("/listDoctor1", {success:function(data){ //컨트롤러에 서비스요청
		for(var i in data){ //응답받은 데이터(객체배열) 수만큼 반복
		// ***
// 		for(var docdata of data){
// 			console.log(docdata)
// 			var p = $("<p></p>")
// 			if(docdata.dept_no==num){
// 				//var deptname = $("<h2></h2>").html(deptdata.dept_name)
// 				//var deptimg = $("<img>").attr("src","./image/"+deptdata.icon).addClass("icon")
// 				//var span2 = $("<span></span>").append(deptimg)
				
				
// 				var namespan = $("<span></span>").html(docdata.doc_name)
// 				console.log(docdata.doc_name)
// 				console.log(span1)
// 				var majorspan = $("<span></span>").html(docdata.doc_major)
// 				var specspan = $("<span></span>").html(docdata.specialization)
// 				var img = $("<img>").attr("src", "./image/"+docdata.doc_fname)
// 	// 			.attr("width", 50)
// 				var imgspan = $("<span></span>").append(img)
// 	// 			var dlink = $("<a></a>")
// 				//<a href='listDoctor?deptno='"+deptdata.dept_no
// 				var dlink = document.createElement("a")
// 				dlink.setAttribute("href", "/detailDoctor?doc_no="+docdata.doc_no)
// 				console.log(dlink)
// 				var btn = $("<button>상세</button>").appendTo(dlink)
// 				console.log(dlink)
				
// 				p.append(namespan, majorspan, specspan, imgspan, dlink)
				
// 			} //진료과내반복끝
// 			console.log(p)
// 			var test = document.getElementById("ajaxtest_output")
// 			test.append(p)
// 		} //반복끝
// 	}}) //ajax끝
// 	} //listfunction 끝

			// ***
			
			var span1 = document.createElement("span") //doc_name 담을곳
			var span2 = document.createElement("span") //major 담을곳.
			var span3 = document.createElement("span") //specialization 담을곳
			var span4 = document.createElement("span") //doc_fname 담을곳
			var dlink = document.createElement("a") //상세보기.
			var rlink = document.createElement("a") //예약.
			var p = document.createElement("p") //p태그 생성.
			var a = data[i] //현재 돌고있는 객체를 바라보는 a변수 선언.
			
			if(a.dept_no==num){ //num은 각 과별 고유번호. 특정 과에 해당하는 의사정보만 가져옴.
				for(var j in a){ //객체 내에서 속성값 수만큼 반복
					if(j=='doc_no'){
						var dno = JSON.stringify(a[j]) //doc_no의 자료형이 object(객체)이기때문에 이 값을 문자열로 바꿔줄 메소드적용
// 						console.log(text)
// 						console.log(typeof text)
 						dlink.setAttribute("href", "/detailDoctor?doc_no="+dno) //a태그에 링크 목적지를 부여.
 						var btn = $("<button>상세</button>").appendTo(dlink) //상세보기 버튼을 a태그 안에 넣어 <a href="~~~"><button>xxx</button></a> 꼴로 만들어줌
						rlink.setAttribute("href", "/reservation?doc_no="+dno)
						var btn2 = $("<button>예약</button>").appendTo(rlink)
					}
					if(j=='doc_name'){ //객체 내 속성값이 doc_name일때
						var text = document.createTextNode(a[j]) //그 속성값 문자열로 가져오기. a[j]는 현재 반복중인 객체 a에서의 j번째 속성(컬럼)을 의미.
						span1.appendChild(text) //span1태그에 담음
					}
					if(j=='major'){ //객체 내 속성값이 major일때.
						var text = document.createTextNode(a[j])
						span2.appendChild(text)
					}
					if(j=='specialization'){ //객체 내 속성값이 specialization일때
						var text = document.createTextNode(a[j])
						span3.appendChild(text)
					}
					if(j=='doc_fname'){ //객체 내 속성값이 doc_fname일때.
						var img = document.createElement("img")
						img.setAttribute("src", "./image/"+a.doc_fname) //이미지 속성 추가. 이미지파일의 위치 지정
						img.setAttribute("width", 50) //크기지정
						img.setAttribute("height", 50)
						span4.appendChild(img)
					}
					p.appendChild(span1)
					p.appendChild(span2)
					p.appendChild(span3)
					p.appendChild(span4)
					p.appendChild(dlink)
					p.appendChild(rlink)
				}
				var test = document.getElementById("ajaxtest_output") //ajaxtest_output이라는 아이디를 가진 노드를 바라보는 변수 test선언 
				test.appendChild(p) //test에 span들이 담긴 p태그 담음 == ajaxtest_output에 담음.
			}
		}
	}}) //ajax통신끝.
	} //함수끝

	$("#ajaxtest_btn1").click(function(){
		$('#ajaxtest_output').empty(); //매 클릭시마다 중첩되지않게 한번씩 비워줌
		num = 1 //진료과 고유번호. 호흡기내과
		list()
	});
	$("#ajaxtest_btn2").click(function(){
		$('#ajaxtest_output').empty();
		num = 2
		list()
	});
	$("#ajaxtest_btn3").click(function(){
		$('#ajaxtest_output').empty();
		num = 3
		list()
	});
	$("#ajaxtest_btn4").click(function(){
		$('#ajaxtest_output').empty();
		num = 4
		list()
	});
	$("#ajaxtest_btn5").click(function(){
		$('#ajaxtest_output').empty();
		num = 5
		list()
	});
	$("#ajaxtest_btn6").click(function(){
		$('#ajaxtest_output').empty();
		num = 6
		list()
	});
	$("#ajaxtest_btn7").click(function(){
		$('#ajaxtest_output').empty();
		num = 7
		list()
	});
	$("#ajaxtest_btn8").click(function(){
		$('#ajaxtest_output').empty();
		num = 8
		list()
	});
	$("#ajaxtest_btn9").click(function(){
		$('#ajaxtest_output').empty();
		num = 9
		list()
	});
	$("#ajaxtest_btn10").click(function(){
		$('#ajaxtest_output').empty();
		num = 10
		list()
	});

})


</script>
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
  	<div class="title">
  		<h1><strong>호흡기 내과</strong> 의료진목록</h1>
  		<span>
	  		<input type="search" size="50" placeholder="의료진 이름을 입력하세요">
	  		<button>의료진 검색</button>
  		</span>
  	</div>
  	<div id="ajaxtest">
  		<div id="buttons">
  		<button id="ajaxtest_btn1">호흡기내과</button>
  		<button id="ajaxtest_btn2">순환기내과</button>
  		<button id="ajaxtest_btn3">소화기내과</button>
  		<button id="ajaxtest_btn4">알레르기내과</button>
  		<button id="ajaxtest_btn5">내과(일반)</button>
  		<button id="ajaxtest_btn6">간담췌외과</button>
  		<button id="ajaxtest_btn7">위장관외과</button>
  		<button id="ajaxtest_btn8">대장항문외과</button>
  		<button id="ajaxtest_btn9">이식혈관외과</button>
  		<button id="ajaxtest_btn10">외과(일반)</button>
  		<button id="ajaxtest_btn11">신경과</button>
  		<button id="ajaxtest_btn12">안과</button>
  		<button id="ajaxtest_btn13">정형외과</button>
  		<button id="ajaxtest_btn14">가정의학과</button>
  		<button id="ajaxtest_btn15">산부인과</button>
  		</div>
  		<div id="ajaxtest_output">
  		</div>
  	</div>
  	<div class="main">
  	
  		<span class="img"><img alt="" src="./image/yu.jpg" class="face"></span>
  		<span class="info">
  			
  			<ul>
  				<div><li><h2>유철규</h2></li></div>
  				<li><strong>진료과</strong><span>호흡기내과</span></li>
				<li><strong>전문분야</strong><span>만성폐쇄성폐질환, 기관지확장증, 만성기침, 천식, 폐암, 폐암의증, 중환자관리, 기관지염, 폐렴</span></li>
			</ul>
				<button>예약하기</button>
				<a href="/detailDoctor?doc_no=1">
				<button>상세보기</button>
				</a>
  		</span>
  	</div>
  	<div class="main">
  		<span class="img"><img alt="" src="./image/im.jpg" class="face"></span>
  		<span class="info">
  			
  			<ul>
  				<div><li><h2>임재준</h2></li></div>
  				<li><strong>진료과</strong><span>호흡기내과</span></li>
				<li><strong>전문분야</strong><span>비결핵항산균증, 폐결핵</span></li>
			</ul>
				<button>예약하기</button><button>상세보기</button>
  		</span>
  	</div>
  	
  <div class="column side"></div>
</div>

<%-- <jsp:include page="/footer.jsp"></jsp:include> --%>
</body>
</html>