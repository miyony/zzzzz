<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


* {	  
	font-family: "맑은 고딕";
}

#main_detail_menu{
	font-size: 25px;
	width : 950px;
	height: 80px;
	padding-top: 40px;
	text-align: center;
	
	
	
}



.main_input{
	width : 850px;
	height: 400px;
	/*border: 1px solid;*/
	
}

li{
	font-size: 13px;
	
		
}

.detail_menu{
	text-align: left;
	font-size: 14px;
	display:flex;
	/*justify-content: center;
	align-items:center;*/
	padding-top : 10px;
	
}

#detail_menu_title{
	width : 850px;	
	font-size: 23px;
	font-weight: bold;
	padding-left: 5px;
	padding-bottom : 10px;
	border-bottom: 1.4px solid #747474;

}

#detail_menu_writer{
	border-right: 1.5px solid #94CCC4;
	padding-right: 5px;
	padding-left: 5px;
}

#detail_menu_regdate{
	border-right: 1.5px solid #94CCC4;
	padding-right: 5px;
	padding-left: 5px;
}

#detail_menu_hit{
	border-right: 1.5px solid #94CCC4;
	padding-right: 5px;
	padding-left: 5px;
}


#detail_menu_file{
	padding-right: 5px;
	padding-left: 5px;
	
}


#detail_menu_content{
	padding-left: 5px;
	font-size: 14px;
}

a{
	text-decoration: none;
	
}

a:visited {
	color: #ffffff;
}

#btn_div{
	width: 850px;
	margin-left: 545px;

}

#btn_update{
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
		
}

#btn_delete{
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
		
}

#btn_list{
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
		
}
</style>
</head>
<body>
	<div id="main_detail_menu">
	고마워요 율제병원
	</div>
		<ul>
			<li>병원을 이용하시면서 선생님께 감사했던 마음을 전해보세요!
따뜻하고 소중한 격려가 됩니다.
			</li>
		</ul>
	
	<div class="main_input">
	<!--  글번호 : ${gb.no }<br>-->
	<div id="detail_menu_title">${gb.title }</div>
	<div class="detail_menu">		
		<div id="detail_menu_writer">작성자 : ${gb.writer }</div>
		<div id="detail_menu_regdate">등록일 : ${gb.regdate }</div>
		<div id="detail_menu_hit">조회수 : ${gb.hit }</div>
		<div id="detail_menu_file">첨부파일 : <a href="../upload/${gb.fname }">${gb.fname }</a></div>
	</div>
	<br>
	<div id="detail_menu_content">
	${gb.content }
	</div>
	<br>
	
	
	<br>
	<div id="btn_div">
	<a href="updateG_Board.do?no=${gb.no }"><button id="btn_update">수정</button></a>
	<a href="deleteG_Board.do?no=${gb.no }"><button id="btn_delete">삭제</button></a>
	<a href="listG_Board.do"><button id="btn_list">목록</button></a>
	<!-- <a href="insertG_Board.do?no=${gb.no }">답글</a> --> 
	</div>
	</div>
	
</body>
</html>