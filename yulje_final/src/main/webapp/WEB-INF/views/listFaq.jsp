<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

	$(function(){
		$.ajax( 
			"/listFaq",
			{						
			success : function(data) {
				let content = "";
				for ( var j=0; j<data.length; j++) {

// 					alert(typeof(data[j].title));
					console.log(data);
					console.log(data[j]);
					/*
					var main_input = $("<input>").attr( { "type":"radio", "name":"accordion", "id":"answer"+j } );

					var title_label = $("<label></label>").html(data[j].title).attr("for","answer"+j);
					var content_p = $("<p></p>").html(data[j].content);
					var content_div = $("<div></div>");

					
					$(content_div).append(content_p);
					$(main_input).append(title_label);
					$(".accordion").append(main_input);
					$(".accordion").append(content_div);
*/
// 					alert(data[j].content);

// 					content += '<input type="radio" name="accordion" id="answer'+j+'">\
//                     <label for="answer'+j+'">"+data[j].title"+"</label><div><p>+data[j].content+</p></div>';

					content += '<input type="radio" name="accordion" id="answer'+j+'">\<label for="answer'+j+'">'+data[j].title+'</label><div><p>'+data[j].content+'</p></div>';
					
				}
				document.getElementById("acco").innerHTML = content;
			}
		  }

		)
	}
	)

</script>
<style type="text/css">
.accordion {
	margin: 10px;
}

label {
	width: 756px;
}

input[id*="answer"] {
	display: none;
}

input[id*="answer"]+label {
	display: block;
	margin: 5px;
	height:50px;
/* 	border: 1px solid cadetblue; */
	border-bottom: 0;
	color: #fff;
	font-weight: 900;
	background-color: #94CCC4;
	cursor: pointer;
	position: relative;
}

/*
   input[id*="answer"] + label em {
      position: absolute;
      top: 50%;
      right: 10px;
      width: 30px;
      height: 30px;
      margin-top: -15px;
      display: inline-block; 
   }
   */
input[id*="answer"]+label+div {
	max-height: 0;
	transition: all .35s;
	overflow: hidden;
	background: #EAEAEA;
	font-size: 11px;
}

input[id*="answer"]+label+div p {
	display: inline-block;
	padding: 20px;
	font-size: 11px;
	
}

input[id*="answer"]:checked+label+div {
	max-height: 100px;
	background-position: 0 -30px;
	width: 756px;
}
</style>


</head>
<body>

	<h2>${title }</h2>
	<a href="insertFaq.do">등록</a>

	<hr>

	<input type="search" name="search" placeholder="검색어를 입력하세요">
	<button id="button_search">검색</button>
	<hr>

	<div class="accordion" id="acco">
<!-- 		<input type="radio" name="accordion"> -->
<%-- 		<c:forEach var="fb" items="${list }"> --%>

<%-- 			<label for="answer" id="answer">Q : ${fb.title }</label> --%>
<%-- 						${fb.title } --%>
<%-- 						${fb.content } --%>

<!-- 			<div> -->
<%-- 				<p>${fb.content }</p> --%>
<!-- 			</div> -->

<%-- 		</c:forEach> --%>
	</div>

	<hr>

	<c:forEach var="i" begin="1" end="${totalPage }">
		<a href="listSFaq.do?pageNUM=${i }">${i }</a>&nbsp;		
		</c:forEach>
</body>
</html>