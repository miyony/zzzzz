<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="SmartEditor2/css/notice_write.css">

<style type="text/css">

* {	  
	  font-family: "맑은 고딕";
}



.main_Board{
	width : 950px;
	height: 900px;

}
.insert_main{
	width : 800px;
	margin: auto;
	
	
}

.insert_text{
	font-size: 13px;
	border-top: 2px solid #94CCC4;
	width : 150px;
	height: 500px;
	margin: 0px;
	position: absolute;
	
}

.main_input{
	margin-left: 200px;

}


.main_input_menu{
	font-size: 25px;
	width : 950px;
	height: 80px;
	text-align: center;	
	padding-top: 40px;
	padding-left: 70px;
}

.main_button{
	text-align: center;
	width : 950px
}

li{
	font-size: 13px;
}

#main_input_form{
	border-top: 2px solid #747474;
	padding-top: 20px;
	font-size: 13px;
	width: 650px;
	
}



#btn_insert{
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
	margin-top: 50px;
		
}

#btn_list{

	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #94CCC4;
	background-color: #ffffff;
	color: #94CCC4;
	font-weight: bold;
	margin-top: 50px;

}

.board_input{
		width: 570px;
		height: 25px;
		border: 1px solid #D5D5D5;
		
	}


.board_input_info{
		width: 152px;
		height: 25px;
		border: 1px solid #D5D5D5;
		
	}
	
/* #smartEditor{ */

/* 	border: 1px solid #D5D5D5; */
/* 	width: 100%; */
/* 	height: 412px; */
/* 	resize: none; */

/* } */

tr, td{
	padding: 3px;
	
}

/*select box*/

select {

    width: 157px; /* 원하는 너비설정 */
    padding: .4em .4em; /* 여백으로 높이 설정 */
    font-family: inherit;  /* 폰트 상속 */
    background: url('이미지 경로') no-repeat 95% 50%; /* 네이티브 화살표를 커스텀 화살표로 대체 */
    border: 1px solid #D5D5D5;
    border-radius: 0px; /* iOS 둥근모서리 제거 */
    -webkit-appearance: none; /* 네이티브 외형 감추기 */
    -moz-appearance: none;
    appearance: none;

}




</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="//cdn.ckeditor.com/4.13.0/standard/ckeditor.js"></script>


</head>
<body>
	<div class="main_Board">
	<div class="main_input_menu">공지사항
	
	</div>
		
	<div class="insert_main">
	<div class="insert_text">
	<h2>새글쓰기</h2>
<%-- 	<c:if test="${no==0 }"> --%>
<!-- 		<div><h2>새글쓰기</h2></div> -->
<%-- 	</c:if> --%>
	
<%-- 	<c:if test="${no!=0 }"> --%>
<!-- 		<div><h2>답글쓰기</h2></div> -->
<%-- 	</c:if> --%>
	</div>
	
	<div class="main_input">
	<form action="insertNotice" method="post" enctype="multipart/form-data">
		
		<ul>
		<li>공지사항이므로 유의하여 작성 부탁드립니다.</li>
		</ul>
		<div id="main_input_form">
		<input type="hidden" name="no" value="${no }">
		<table width="100%">
		<tr>
			<td>글제목</td>
			<td><input type="text" name="title" class="board_input" required="required" value="${title }"></td>
						
		</tr>
				
		<tr>
			<td>내용</td>
			<td colspan="3" ><textarea id="content" name="content" rows="5" cols="50" placeholder="메세지를 남겨주세요."></textarea></td>
		
		</tr>
		
		
		<tr>
			<td>첨부파일</td>
			<td colspan="3"><input type="file" name="uploadFile" ></td>
		
		</tr>
			
				
		</table>
		</div>
	
	</div>
		</div>
	
	
	
	
	<br>
	
	<div class="main_button">		
		<button id="btn_insert">등록</button>
		<a href="listG_Board.do"><button id="btn_list" type="button">목록</button></a>
	</form>
<script type="text/javascript"> 
    CKEDITOR.replace('content', {height: 350});
</script>



	</div>
	
	</div>
	


	
</body>
</html>
