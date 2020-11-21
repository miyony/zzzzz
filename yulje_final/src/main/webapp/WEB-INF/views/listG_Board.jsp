<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	font-size: 11px;
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


#td_writer{
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
</head>
<body>
	
	<div class="main_input_menu">
		${title }
	</div>
		<ul>
			<li>병원을 이용하시면서 선생님께 감사했던 마음을 전해보세요!
따뜻하고 소중한 격려가 됩니다.
			</li>
		</ul>
	<br>
	
	
	
	<div class="main_input">
	<table class="listG_Board">
	
		<tr>
			<th id="td_no">글번호</th>
			<th id="td_dept">진료과</th>
			<th id="td_title">글제목</th>
			<th id="td_writer">작성자</th>
			<th id="td_regdate">등록일</th>
		</tr>
		
		<c:forEach var="gb" items="${list }">
			<tr>
				<td>${gb.no }</td>
				<td>${gb.dept_name }</td>
				<td>
				<c:if test="${gb.b_level>0 }">
					<c:forEach begin="1" end="${gb.b_level }">
						&nbsp;&nbsp;
					</c:forEach>
				</c:if>
				<a href="detailG_Board.do?no=${gb.no }">${gb.title }</a>
				</td>
				<td>${gb.writer }</td>
				<td>${gb.regdate }</td>
			
			</tr>
		
		</c:forEach>
	</table>
		<br>
		<br>
		
		<c:forEach var="i" begin="1" end="${totalPage }">
			<a href="listG_Board.do?pageNUM=${i }">${i }</a>&nbsp;		
		</c:forEach>
		<br>
		<div id="btn_div">
			<a href="insertG_Board.do"><button id="btn_insert">새글쓰기</button></a>
		</div>
	</div>
	
	


</body>
</html>