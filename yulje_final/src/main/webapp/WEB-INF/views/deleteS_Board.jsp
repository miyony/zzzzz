<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: "맑은 고딕";
}

/*modal*/
.ow-overlay {
	position: fixed;
	z-index: 10;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	background: #424242;
	opacity: 0.8;
}

/* Default class for both hidden overlay and modal window */
.ow-closed {
	display: none;
}

/* Default class for modal window */
.modal {
	position: fixed;
	z-index: 20;
	height: 450px;
	left: 50%;
	top: 225px;
	width: 450px;
	background-color: #fff
}

.container {
	width: 450px;
	height: 450px;
	margin-top: 120px; padding : 0px;
	/*justify-content: center;
	display: flex;
	margin-top: 15px;
	border: 1px solid #bcbcbc;*/
	
}

#main_input_menu {
	font-size: 24px;
	font-weight: bold;
	text-align: center;
}

#main_input_detail {
	font-size: 14px;
	padding-top: 10px;
	text-align: center;
}

.board_input_info {
	width: 152px;
	height: 25px;
	border: 1px solid #D5D5D5;
}

#main_input_info{
	font-size: 14px;
	text-align: center;
	margin-top: 20px;
}

#main_btn{
	text-align: center;
}


#btn_delete {
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #ffffff;
	background-color: #94CCC4;
	color: #ffffff;
	font-weight: bold;
	margin-top: 50px;
}

#btn_list {
	border-radius: 10px;
	width: 100px;
	height: 35px;
	border: 1px solid #94CCC4;
	background-color: #ffffff;
	color: #94CCC4;
	font-weight: bold;
	margin-top: 50px;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="OmniWindow-1.0.1/jquery.omniwindow.js"></script>
<script type="text/javascript">
	$(function() {
		$('div.modal').omniWindow() // create modal
		.trigger('show'); // and show it
	});

	$('.close-button').click(function(e) {
		e.preventDefault();
		$modal.trigger('hide');
	});
</script>
</head>
<body>

	<!-- Container for an overlay: -->
	<div class="ow-overlay ow-closed"></div>

	<div class="modal ow-closed">
		<div class="container">
			<div id="main_input_menu">게시물을 삭제 하시겠습니까?</div>
			<div id="main_input_detail">하기 정보를 확인 후 비밀번호를 입력해주세요.</div>
			<br>

			<div id="main_input_info">
				<form action="deleteS_Board.do" method="post">
					<input type="hidden" name="no" value="${no }">
					<div>
						비밀번호 <input type="password" name="pwd" class="board_input_info">
					</div>
			</div>
			<div id="main_btn">
					<button id="btn_delete">삭제</button>
					<a href="listG_Board.do"><button id="btn_list" type="button">취소</button></a>
				</form>
			</div>

		</div>
	</div>
</body>
</html>