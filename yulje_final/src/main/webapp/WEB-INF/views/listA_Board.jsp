<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {

		// dept_button를 클릭시 강제적으로 클릭이벤트를 발생시킴
		$(document).on(
				"click",
				".dept_button",
				function() {
					var deptno = $(this).attr("deptno"); // btn의 속성("deptno")을 불러옴
					var deptname = $(this).attr("deptname");// btn의 속성("deptname")을 불러옴
					//alert(deptno);
					$("#doc_detail_menu").empty();
					
					$.ajax({ // dept_no를 매개변수로 받아서 doctor의 detail을 출력
						url : "/listDoctor.do",
						method : "POST",
						dataType : "json",
						data : {
							dept_no : deptno
						},
						success : function(data) {

							for ( var j in data) {

								//alert(data[j].doc_name);
								//alert(data[j].specialization);

								var name_div = $("<div></div>").html(data[j].doc_name).addClass("doc_name_div");
								var specialization_div = $("<div></div>").html(data[j].specialization).addClass("doc_specialization_div");
								
								$("#doc_detail_menu").append(name_div);
								$("#doc_detail_menu").append(specialization_div);

							}

						}
					})
					
					$("tbody").empty();
					
					$.ajax({ // deptname를 받아와서 cotroller로 보내주는 ajax
						url : "/listA_Board.do",
						method : "POST",
						dataType : "json",
						data : {
							dept_name : deptname
						},
						success : function(data) {
							for( var a in data){

								var level = eval(data[a].b_level); // b_level을 int로 타입캐스팅
								var title  = "";
								//alert(level);

								if(level > 0){
									for(var i = 0; i < level; i++){
										title +="&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp";
										}
									}
								title += data[a].title;
								var table_a = $("<a></a>");
								$(table_a).html(title).attr("href","detailA_Board.do?no="+data[a].no);

								var table_tr = $("<tr></tr>");
								var table_td1 = $("<td></td>").html(data[a].no);
								var table_td2 = $("<td></td>").html(data[a].dept_name);
								var table_td3 = $("<td></td>").html(table_a);
								var table_td4 = $("<td></td>").html(data[a].writer);
								var table_td5 = $("<td></td>").html(data[a].regdate);
								
								$(table_tr).append(table_td1,table_td2,table_td3,table_td4,table_td5);
								$("tbody").append(table_tr);
								
								
								
								}
							

						}
					})

				});

		$.ajax("/listDept.do", {
			success : function(data) {
				for ( var i in data) {
					//console.log(data[i].dept_name);
					var btn = $("<button></button>").html(data[i].dept_name).addClass("dept_button");
					$(btn).attr("deptno", data[i].dept_no);
					$(btn).attr("deptname", data[i].dept_name);

					$("#dept_menu").append(btn);

				}

			}
		})

	});
</script>
<style>
* {
	font-family: "맑은 고딕";
}

#dept_menu {
	background-color: #EAEAEA;
	width: 1200px;
	height: 150px;
	padding-top: 15px;
	text-align: center;
}

.dept_button {
	border-radius: 10px;
	width: 100px;
	height: 50px;
	border: 1px solid white;
	background-color: white;
	color: #94CCC4;
	font-weight: bold;
}

.main_input_menu {
	font-size: 25px;
	width: 950px;
	height: 80px;
	text-align: center;
	padding-top: 40px;
}

.main_input {
	width: 950px;
	text-align: center;
}

li {
	font-size: 11px;
	margin-left: 350px;
}

table {
	border-collapse: collapse;
	width: 850px;
}

.board_table {
	margin-left: 45px;
}

th {
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

#td_no {
	width: 65px;
}

#td_dept {
	width: 110px;
}

#td_title {
	width: 400px;
}

#td_writer {
	width: 110px;
}

#td_regdate {
	width: 110px;
}

#btn_insert {
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
}

a {
	text-decoration: none;
}

a:visited {
	color: black;
}

#btn_div {
	margin-left: 650px;
}
</style>
</head>
<body>

	<div class="main_input_menu">${title }</div>
	<ul>
		<li>병원을 이용하시면서 선생님께 감사했던 마음을 전해보세요! 따뜻하고 소중한 격려가 됩니다.</li>
	</ul>
	<br>

	<div id="dept_menu">

		<!-- dept button -->

	</div>

	<div id="doc_detail_menu"></div>
	<br>




	<div class="main_input">
		<div class="board_table">
			<table class="listA_Board">
				<thead>
					<tr>
						<th id="td_no">글번호</th>
						<th id="td_dept">진료과</th>
						<th id="td_title">글제목</th>
						<th id="td_writer">작성자</th>
						<th id="td_regdate">등록일</th>
					</tr>
				</thead>
				<tbody>
<%-- 					<c:forEach var="ab" items="${list }"> --%>
<!-- 						<tr> -->
<%-- 							<td>${ab.no }</td> --%>
<%-- 							<td>${ab.dept_name }</td> --%>
<%-- 							<td><c:if test="${ab.b_level>0 }"> --%>
<%-- 									<c:forEach begin="1" end="${ab.b_level }"> --%>
<!-- 						&nbsp;&nbsp; -->
<%-- 					</c:forEach> --%>
<%-- 								</c:if> <a href="detailA_Board.do?no=${ab.no }">${ab.title }</a></td> --%>
<%-- 							<td>${ab.writer }</td> --%>
<%-- 							<td>${ab.regdate }</td> --%>

<!-- 						</tr> -->

<%-- 					</c:forEach> --%>
				</tbody>
			</table>
		</div>
		<br> <br>

		<c:forEach var="i" begin="1" end="${totalPage }">
			<a href="listA_Board.do?pageNUM=${i }">${i }</a>&nbsp;		
		</c:forEach>
		<br>
		<div id="btn_div">
			<a href="insertA_Board.do"><button id="btn_insert">새글쓰기</button></a>
		</div>
	</div>




</body>
</html>