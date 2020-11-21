<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax("/isMember",{success:function(data){
		// data는 내맘대로 설정한것 controller에서는 return r로 반환햇움
		// controller에서 반환한 값을 읽어오기만 함
		console.log(data)
		if(data == "ADMIN"){
			var button = $("<button></button>").html("등록").addClass("btn1");
			var a = $("<a></a>").attr("href","insertNotice").html(button);
			$("#search").append(a);
		}
	}})
});
</script>
<style>


* {	  
	  font-family: "맑은 고딕";
}


.main_input_menu{
	font-size: 25px;
	width : 950px;
	height: 80px;
	text-align: center;	
	padding-top: 40px;
}

.main_input{
	width : 950px;
	text-align: center;
	
}

li{
	font-size: 13px;
	margin-left: 350px;
	
}

table{
	border-collapse: collapse;
	width: 850px;
}

th{
	font-weight: bold;
	border-bottom: 1.4px solid #747474;
	padding-bottom: 5px;
	font-size: 14px;
}

/* w3school 긁어옴 */

td {
  padding: 8px;
  text-align: center;
  border-bottom: 1px solid #94ccc4;
  font-size: 14px;
}


#td_no{
	width: 65px;
}

#td_dept{
	width: 110px;
}


#td_title{
	width: 400px;
}


#td_hit{
	width: 110px;
}


#td_regdate{
	width: 110px;
}


#btn_insert{
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
		
}

a{
	text-decoration: none;
	
}

a:visited {
	color: black;
}

#btn_div{
	margin-left: 650px;

}

</style>
<title>공지사항</title>
</head>







<body>

  		<div class="main_input_menu">
		공지사항
	</div>
		<ul>
			<li>율제병원의 새 소식을 알려드립니다.
			</li>
		</ul>
	<br>
	
	
	
	<div class="main_input">
	<table class="listG_Board">
	
		<tr>
			<th id="td_no">글번호</th>
			<th id="td_title">글제목</th>
			<th id="td_hit">조회수</th>
			<th id="td_regdate">등록일</th>
		</tr>
		
		<c:forEach var="n" items="${list }">
			<tr>
				<td>${n.no }</td>
				<td>
				<a href="detailNotice?no=${n.no }">${n.title }</a>
				</td>
				<td>${n.hit }</td>
				<td>${n.regdate }</td>
			
			</tr>
		
		</c:forEach>
	</table>
		<br>
		<br>
  	
  	<!-- 리스트번호, 검색 -->
	<div class="bottom">
		<div class="div_num">
			<c:forEach var="i" begin="1" end="${totalPage }">
			<a href="listNotice?pageNUM=${i }">${i }</a>&nbsp;		
			</c:forEach>		
		</div>
		<div class="search" id="search">
			<input id="search_input" type="text" size="30">
			<button id="btn">검색</button>
		</div>
	</div>
  </div>
  </div>
  <div class="column side"> </div>
</div>



</body>
</html>