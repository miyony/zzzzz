<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	font-family: "맑은 고딕";
}

.main_Board {
	width: 950px;
	height: 900px;
}

.insert_main {
	width: 950px;
	margin: auto;
}

/*.insert_text1 {
	font-size: 13px;
	border-top: 2px solid #94CCC4;
	width: 150px;
	height: 60px;
	margin: 0px;
	position: absolute;
}
*/

/*첫번째*/
.insert_text1 {
	display: flex;
}

#insert_detail1_1 {
	width: 250px;
	height: 30px;
	margin-right: 50px;
	font-size: 20px;
	font-weight: bold;
	border-bottom: 2px solid #94CCC4;
}

#insert_detail1_2 {
	padding-top: 50px;
}

/*두번째*/
.insert_text2 {
	display: flex;
}

#insert_detail2_1 {
	width: 250px;
	height: 30px;
	margin-right: 50px;
	font-size: 20px;
	font-weight: bold;
	border-bottom: 2px solid #94CCC4;
}

#insert_detail2_2 {
	padding-top: 50px;
}

/*세번째*/
.insert_text3 {
	display: flex;
}

#insert_detail3_1 {
	width: 250px;
	height: 30px;
	margin-right: 50px;
	font-size: 20px;
	font-weight: bold;
	border-bottom: 2px solid #94CCC4;
}

#insert_detail3_2 {
	width: 650px;
	padding-top: 50px;
}

.textarea1 {
	border: 1px solid #D5D5D5;
	width: 650px;
	resize: none;
}

#textarea2 {
	border: 1px solid #D5D5D5;
	width: 500px;
	resize: none;
}

.agreement_radio {
	margin-top: 15px;
	justify-content: center;
	display: flex;
	font-size: 14px;
}

.main_input {
	margin-left: 200px;
}

.main_input_menu {
	font-size: 25px;
	width: 950px;
	height: 80px;
	text-align: center;
	padding-top: 40px;
}

.main_button {
	text-align: center;
	width: 950px
}

li {
	font-size: 11px;
}

#main_input_form {
	border-top: 2px solid #747474;
	padding-top: 20px;
	font-size: 13px;
}

#btn_insert {
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

.board_input {
	width: 250px;
	height: 25px;
	border: 1px solid #D5D5D5;
}

.board_input_info {
	width: 152px;
	height: 25px;
	border: 1px solid #D5D5D5;
}

tr, td {
	padding: 3px;
}

/*select box*/
select {
	width: 157px; /* 원하는 너비설정 */
	padding: .4em .4em; /* 여백으로 높이 설정 */
	font-family: inherit; /* 폰트 상속 */
	background: url('이미지 경로') no-repeat 95% 50%;
	/* 네이티브 화살표를 커스텀 화살표로 대체 */
	border: 1px solid #D5D5D5;
	border-radius: 0px; /* iOS 둥근모서리 제거 */
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}
</style>

</head>
<body>
	<div class="main_Board">
		<div class="main_input_menu">1:1 전문의 상담</div>


		<!-- 전체 컨테이너 -->
		<div class="insert_main">


			<!-- 첫번째 -->
			<div class="main_input1">
				<div class="insert_text1">

					<div id="insert_detail1_1">개인정보 수집∙이용 동의</div>
					<div id="insert_detail1_2">
						<textarea rows="10" cols="100" class="textarea1"
							readonly="readonly">개인정보 수집, 이용 동의

1. 수집하는 개인정보 항목
- 연락처, 이메일, 생년월일, 성별, 체중, 신장, 혈액형, RH, 아이디(닉네임)
- 선택항목 : 환자등록번호
- 병력 및 가족력 등 진료서비스 제공을 위하여 의료진이 필요하다고 판단되는 개인건강정보

2. 수집이용 목적
1:1 전문의 온라인 상담

3. 보유 및 이용 기간
3년 후 삭제되며, 온라인 상담 외 목적으로는 사용하지 않습니다.
단, 고객이 원할 경우 삭제 가능합니다.

4. 개인정보의 수집, 이용에 대한 동의 거부
본인은 위와 같이 개인정보를 수집, 이용하는데 대한 동의를 거부할 권리가 있습니다.
단, 동의를 거부할 경우 온라인 상담이 불가하오니 참고하시기 바랍니다.</textarea>
						<div class="agreement_radio">
							<div class="input_radio">
								<input type="radio" name="radio_check01" id="rdAgree1_1" /> <label
									for="rdAgree1_1">동의합니다.</label>
							</div>
							<div class="input_radio">
								<input type="radio" name="radio_check01" id="rdAgree1_2" /> <label
									for="rdAgree1_2">동의하지 않습니다.</label>
							</div>
						</div>

					</div>

				</div>
			</div>



			<!-- 두번째 -->
			<div class="main_input2">
				<div class="insert_text2">

					<div id="insert_detail2_1">민감정보 처리 동의</div>
					<div id="insert_detail2_2">
						<textarea rows="10" cols="100" class="textarea1"
							readonly="readonly">민감정보 처리 동의

1. 수집하는 민감정보 항목
환자의 증상, 병력, 질병

2. 수집이용 목적
1:1 전문의 온라인 상담

3. 보유 및 이용 기간
3년 후 삭제되며, 온라인 상담 외 목적으로는 사용하지 않습니다.
단, 고객이 원할 경우 즉시 삭제 가능합니다.

4. 민감정보의 수집, 이용에 대한 동의 거부
본인은 위와 같이 민감정보를 수집, 이용하는데 대한 동의를 거부할 권리가 있습니다.
단, 동의를 거부할 경우 온라인 상담이 불가하오니 참고하시기 바랍니다.</textarea>
						<div class="agreement_radio">
							<div class="input_radio">
								<input type="radio" name="radio_check02" id="rdAgree2_1" /> <label
									for="rdAgree2_1">동의합니다.</label>
							</div>
							<div class="input_radio">
								<input type="radio" name="radio_check02" id="rdAgree2_2" /> <label
									for="rdAgree2_2">동의하지 않습니다.</label>
							</div>
						</div>

					</div>

				</div>
			</div>

			<!-- 세번째 -->
			<div class="main_input3">
				<div class="insert_text3">
					<div id="insert_detail3_1">
						<c:if test="${no==0 }">
							<div>상담하기</div>
						</c:if>

						<c:if test="${no!=0 }">
							<div>답글쓰기</div>
						</c:if>
					</div>
					<div id="insert_detail3_2">
						<form action="insertA_Board.do" method="post"
							enctype="multipart/form-data">

							<ul>
								<li>본문 또는 첨부파일내에 개인정보(주민등록번호, 연락처 등)가 포함되지 않도록 유의해 주세요.</li>
							</ul>
							<div id="main_input_form">
								<input type="hidden" name="no" value="${no }">
								<table>
									<tr>
										<td>글제목 </td>
										<td><input type="text" name="title" class="board_input"
											required="required" value="${title }"></td>
										<td>진료과 </td>
										<td><c:if test="${no==0 }">
												<select name="dept_name" required="required">
													<option selected>해당 과를 선택하세요.</option>
													<option value="호흡기내과">호흡기내과</option>
													<option value="순환기내과">순환기내과</option>
													<option value="소화기내과">소화기내과</option>
													<option value="알레르기내과">알레르기내과</option>
													<option value="내과(일반)">내과(일반)</option>
													<option value="간담췌외과">간담췌외과</option>
													<option value="위장관외과">위장관외과</option>
													<option value="대장항문외과">대장항문외과</option>
													<option value="이식혈관외과">이식혈관외과</option>
													<option value="외과(일반)">외과(일반)</option>
													<option value="신경과">신경과</option>
													<option value="안과">안과</option>
													<option value="정형외과">정형외과</option>
													<option value="가정의학과">가정의학과</option>
													<option value="산부인과">산부인과</option>
												</select>
											</c:if> <c:if test="${no!=0 }">
												${dept_name }
												<input type="hidden" name="dept_name" class="board_input" required="required" value="${dept_name }">
											</c:if></td>
									</tr>
									<tr>
										<td>작성자 </td>
										<td><input type="text" name="writer"
											class="board_input_info"></td>
										<td>비밀번호 </td>
										<td><input type="password" name="pwd"
											class="board_input_info"></td>

									</tr>

									<tr>
										<td>내용 </td>
										<td colspan="3"><textarea rows="10" cols="60"
												name="content" id="textarea2" placeholder="메세지를 남겨주세요."></textarea></td>

									</tr>


									<tr>
										<td>첨부파일 </td>
										<td colspan="3"><input type="file" name="uploadFile"></td>

									</tr>


								</table>
							</div>
					</div>
				</div>


			</div>







			<br>

			<div class="main_button">
				<button id="btn_insert">등록</button>
				<a href="listA_Board.do"><button id="btn_list" type="button">목록</button></a>

			</div>
			</form>
		</div>
</body>
</html>