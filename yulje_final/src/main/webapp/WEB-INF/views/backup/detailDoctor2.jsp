<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.img{

width: 350px;
height: 450px;

}

#major{
font-size: 18px;

}

table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  text-align: center;
}

td, th {
  border: 1px solid #ddd;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;}

tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #16498C;
  color: white;
}

</style>
</head>
<body>

	<img src="./WEB-INF/image/${d.doc_fname }" class="img" align="left" vspace="20" hspace="20">

	<h2> 의사 소개_<font id="major">${d.major }</h2>
	
	<hr>	
	이름 : ${d.doc_name }<br>
	직급 : ${d.position }<br>
	전공 : ${d.major }<br>
	세부전공 : ${d.specialization }<br>		
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<br>
	<hr>
	진료일정
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
			<td><c:if test="${ma==1 }">O</c:if></td>
			<td><c:if test="${ta==1 }">O</c:if></td>
			<td><c:if test="${wa==1 }">O</c:if></td>
			<td><c:if test="${tha==1 }">O</c:if></td>
			<td><c:if test="${fa==1 }">O</c:if></td>
			<td><c:if test="${sa==1 }">O</c:if></td>
		</tr>
		<tr>
			<th>오후</th>
			<td><c:if test="${mp==1 }">O</c:if></td>
			<td><c:if test="${tp==1 }">O</c:if></td>
			<td><c:if test="${wp==1 }">O</c:if></td>
			<td><c:if test="${thp==1 }">O</c:if></td>
			<td><c:if test="${fp==1 }">O</c:if></td>
			<td><c:if test="${sp==1 }">O</c:if></td>
		</tr>		
	</table>
	<!-- 
	<table border="1">
		<tr>
			<th>요일</th>
			<th>시간</th>
		</tr>
		<c:forEach var="s" items="${slist }">
			<tr>
				<td>${s.workday }</td>
				<td>${s.am_pm }</td>
			</tr>
		</c:forEach>
	</table> 
	 -->
	
	<hr>
	경력<br>
	<table>
		<tr>
			<th>시작일</th>
			<th>종료일</th>
			<th>내용</th>
		</tr>
		<c:forEach var="c" items="${clist }">
			<tr>
				<td>${c.car_sdate }</td>
				<td>${c.car_edate }</td>
				<td>${c.car_content }</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	학력
	<table>
		<tr>
			<th>시작일</th>
			<th>종료일</th>
			<th>내용</th>
		</tr>
		<c:forEach var="e" items="${elist }">
			<tr>
				<td>${e.edu_sdate }</td>
				<td>${e.edu_edate }</td>
				<td>${e.edu_content }</td>
			</tr>
		</c:forEach>
		
	</table>
	<hr>
	<a href="listDoctor.do?dept_no=${d.dept_no }"><input type="button" value="목록"></a>
	
</body>
</html>