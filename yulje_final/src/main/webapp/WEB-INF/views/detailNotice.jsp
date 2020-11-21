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
	공지사항
	</div>
		<ul>
			<li>율제병원의 새로운 소식을 알려드립니다.
			</li>
		</ul>
	
	<div class="main_input">
	<!--  글번호 : ${gb.no }<br>-->
	<div id="detail_menu_title">${n.title }</div>
	<div class="detail_menu">		
		<div id="detail_menu_regdate">등록일 : ${n.regdate }</div>
		<div id="detail_menu_hit">조회수 : ${n.hit }</div>
		<div id="detail_menu_file">첨부파일 : <a href="../upload/${n.fname }">${n.fname }</a></div>
	</div>
	<br>
	<div id="detail_menu_content">
	${n.content }
	</div>
	<br>
	
	
	<br>
	<div id="btn_div">
	<a href="updateNotice?no=${n.no }"><button id="btn_update">수정</button></a>
	<a href="deleteNotice?no=${n.no }"><button id="btn_delete">삭제</button></a>
	<a href="listNotice.do"><button id="btn_list">목록</button></a>
	
	</div>
	</div>
	
</body>
</html>