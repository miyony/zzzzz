<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="footer.css">
<link rel="stylesheet" href="sidenav.css">
<link rel="stylesheet" href="header.css">
<title>Insert title here</title>
</head>
<style>

</style>
<title>Insert title here</title>
</head>
<body>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" vlink="black">
    <div id="container">
	<div class="header">
	<div class="clear"></div>
	
	<!-- 아이콘들 -->
	<div class="icon">
	<ul>
		<li >
		<c:if test="${re <= 0 }">
			<a href="loginMember.do">
			<img src="./main/main_06.png" width="63" height="29"></a>
			</c:if>
			<c:if test="${re == 7 }">
			<a href="logout.do">
			<img src="./main/main3_06.jpg" width="63" height="29"></a>
			</c:if>
		</li>
		<li>
		<c:if test="${re <= 0 }">
			<a href="insertMember.do">
			<img src="./main/main_07.png" width="71" height="29"></a>
			</c:if>
			<!-- 2020/10/05일 11시경 여기 부터 수정 -->
			<c:if test="${re == 7 }">
			<c:if test="${section==100 }">
			<a href="myPage.do">
			<img src="./main/main3_07.jpg" width="71" height="29"></a></c:if>
			<c:if test="${section==200 }">
			<a href="mypageGuest.do">
			<img src="./main/main3_07.jpg" width="71" height="29"></a></c:if>
			</c:if>
			<!-- 2020/10/05일 11시경 여기까지 수정  -->
		</li>
		<li>
			<a href="map.do">
			<img src="./main/main_08.png" width="78" height="29">
			</a>
		</li>		
	</ul>
	</div>
	
	
	
	<!-- 율제대학교병원 로고 -->
	<div class="main">
	
	<ul>
		<li>
			<a href="main.do">
			<img src="./main/main_05.png" width="397" height="94" alt="">
			</a>
		</li>
		
	</ul>
	
	</div>
	<hr>
	
	
	<!-- 메인메뉴 -->
	<nav>
	<div id = "menumain">
	<div class= "navbar">
		<div id = "box1" class = "boxes">
			<div class = "navs" id = "nav1">
			예약/조회/발급
			</div>
			<div class = "wrap" id = "wrap1">
				<div class = "nws" id = "nw1">
					<div class="dropdown_box">예약/조회/발급</div>
					<div class = dropdown_list>
					<div class = "list">예약안내</div>
					<div class = "list"><a href="insertReservation.do">온라인예약</a></div>
					<div class = "list"><a href="insertReservation.do">예약조회/취소</a></div>
					<div class = "list"><a href="listLetterAttorney.do">증명서발급</a></div>
				</div>
				<div class="empty">
				</div>
				<div class="tel">
				<h2>전화 진료 예약</h2><br>
				<h5>02-707-1480</h5>
				</div>
				</div>				
			</div>
		</div>
		<div id = "box2" class = "boxes">
			<div class = "navs" id = "nav2">
			의료진/의료과
			</div>
			<div class = "wrap" id = "wrap2">
				<div class = "nws" id = "nw2">
				<div class="dropdown_box">의료진/<br>의료과</div>
				<div class = dropdown_list>
					<div class = "list"><a href="listDoctor.do?dept_no=1">의료진</a></div>
					<div class = "list"><a href="listDEPT.do">의료과</a></div>
					</div>
				<div class="empty">
				</div>
				<div class="tel">
				<h2>전화 진료 예약</h2><br>
				<h5>02-707-1480</h5>
				</div>
				</div>
			</div>
		</div>
		
		<div id = "box3" class = "boxes">
			<div class = "navs" id = "nav3">
			이용안내
			</div>
			<div class = "wrap" id = "wrap3">
				<div class = "nws" id = "nw3">
				<div class="dropdown_box">이용안내</div>
				<div class = dropdown_list>
					<div class = "list">층별안내</div>
					<div class = "list">병문안 안내</div>
				</div>
				<div class="empty">
				</div>
				<div class="tel">
				<h2>전화 진료 예약</h2><br>
				<h5>02-707-1480</h5>
				</div>
				</div>
			</div>
		</div>
		
		<div id = "box4" class = "boxes">
			<div class = "navs" id = "nav4">
			건강정보
			</div>
			<div class = "wrap" id = "wrap4">
				<div class = "nws" id = "nw4">
					<div class="dropdown_box">건강정보</div>
					<div class = dropdown_list>
					<div class = "list"><a href="listMedicine.do">약</a></div>
					<div class = "list">건강TV</div>
				</div>
				<div class="empty">
				</div>
				<div class="tel">
				<h2>전화 진료 예약</h2><br>
				<h5>02-707-1480</h5>
				</div>	
				</div>
			</div>
		</div>
		
		<div id = "box5" class = "boxes">
			<div class = "navs" id = "nav5">
			병원소개
			</div>
			<div class = "wrap" id = "wrap5">
				<div class = "nws" id = "nw5">
				<div class="dropdown_box">병원소개</div>
				<div class = dropdown_list>
					<div class = "list">병원소개</div>
					<div class = "list"><a href="map.do">찾아오시는 길</a></div>
				</div>
				<div class="empty">
				</div>
				<div class="tel">
				<h2>전화 진료 예약</h2><br>
				<h5>02-707-1480</h5>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="stitle">
	<h2>공지사항</h2>
	</div>
<div id="smain">
<div class="sidenav">
  <a href="main.do">메인으로</a>
  <br>
  <a href="listNotice.do">공지사항</a>
  <a href="listAdvice.do">상담게시판</a>
  <a href="listComplimentBoard.do">감사합니다</a>
  <a href="listSuggestionBoard.do">건의합니다</a>
</div>

<div class="content">
<h2>공지사항 등록</h2>
	<hr>
	<img src="pp.png" widht="400" height="150">
	<hr>
	<form action="insertNotice" method="post" enctype="multipart/form-data">
		<input type="hidden" name="no" value="${no }">
		 글제목 : <input type="text" name="title"><br>
		 글내용 : <br>
		 <textarea rows="10" cols="60" name="content" ></textarea><br>
		 첨부파일 : <input type="file" name="fname"><br>
		 <input type="submit" value="등록">
		 <input type="reset" value="취소">
	</form>
</div>
</div>

<!-- Footer -->
		<footer id="footer">
		<div class="inner">
			<div class="info">
				<ul class="footer-link">
					<li><a href="#popupPrivacyList" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/privacy_policy.asp', this, '.popup-privacyList'); return false;"><span class="white fs14">개인정보처리방침</span></a></li>
					<li class="link-policy"><a href="#popupVideoPolicy" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/video_policy.asp', this,'.popup-videoPolicy'); return false;">영상정보처리기기운영방침</a></li>
					<li><a href="/ilsan/etc/popRights.asp" onclick="ajaxPopup('.ajaxPopup', '', this.href, this,'.popup-popRights'); return false;">환자권리장전</a></li>
					<!--<li><a href="#">사이트맵</a></li>-->
				</ul>
				<div class="copyright">
					<address>04108 서울 마포구 백범로 23 구프라자 3층</address><br>
					<span>HELLJAVA COPYRIGHT (C)2018 YULJE UNIVERSITY HOSPITAL.ALL RIGHTS RESERVED.</span>
				</div>
				<div class="etc">
					<i class="ico ico-certify">보건복지부 인증 의료기관</i>
					<div class="sns-link">
						<a href="https://brunch.co.kr/" target="_blank" title="새창"><i class="ico ico-brunch">brunch</i></a>
						<a href="https://www.facebook.com/" target="_blank" title="새창"><i class="ico ico-facebook2">facebook</i></a>
						<a href="http://blog.naver.com/" target="_blank" title="새창"><i class="ico ico-blog2">blog</i></a>
					</div>
				</div>
			</div>
			<div class="tel-num">
				<dl>
					<dt>대표전화(안내)</dt>
					<dd>02-707-1480</dd>
				</dl>
			</div>
			<div class="family-site">
				<dl>
					<dt><em>FAMILY SITE</em></dt>
					<dd>
						<ul>
							<li><a href="https://www.google.com/search?rlz=1C1CHZN_koKR916KR916&ei=2JR6X--dFaeh-QaM-qOgCg&q=%EC%9C%A8%EC%A0%9C+%EC%A4%91%EC%95%99%EC%9D%98%EB%A3%8C%EC%9B%90&oq=%EC%9C%A8%EC%A0%9C+%EC%A4%91%EC%95%99%EC%9D%98%EB%A3%8C%EC%9B%90&gs_lcp=CgZwc3ktYWIQAzIFCAAQzQIyBQgAEM0CUKAVWIMbYIUdaAFwAHgAgAFciAGfA5IBATWYAQCgAQGqAQdnd3Mtd2l6wAEB&sclient=psy-ab&ved=0ahUKEwjv6ciNw5zsAhWnUN4KHQz9CKQQ4dUDCA0&uact=5">율제 중앙의료원</a></li>
							<li><a href="https://www.snuh.org/main.do">서울대병원</a></li>
							<li><a href="https://www.paik.ac.kr/ilsan/">일산백병원</a></li>
							<li><a href="https://medicine.snu.ac.kr/" target="_blank" title="새창열림">율제대학교</a></li>
							<li><a href="https:/www.google.com/">Hell Java</a></li>
						</ul>
					</dd>
				</dl>

			</div>
		</div>
		</footer>
		<!-- footer_menu -->
		<!-- 
		<div class="footer-menu">
			<div class="inner">
				<ul class="clearfix">
					<li><a href="/ilsan/reservation/reservation.asp"><i class="ico ico-cal5"></i>진료예약</a></li>
					<li><a href="/ilsan/reservation/schedule.asp" onclick="open(this.href, '_swin_', 'width=1120,height=800,scrollbars,resizable');return false;"><i class="ico ico-magnifying"></i>진료시간표</a></li>
					<li><a href="/ilsan/treatment/treatment_parts.asp"><i class="ico ico-stethoscope"></i>진료과</a></li>
					<li><a href="/ilsan/treatment/center_clinic.asp?tabIndex=0"><i class="ico ico-hospital"></i>전문진료센터</a></li>
					<li><a href="/ilsan/treatment/center_clinic.asp?tabIndex=1"><i class="ico ico-building"></i>전문클리닉</a></li>
					<li><a href="/ilsan/info/tell_info.asp"><i class="ico ico-phone"></i>전화번호안내</a></li>
					<li><a href="/ilsan/info/direction.asp"><i class="ico ico-pin"></i>오시는길</a></li>
				</ul>
				<a href="/ilsan/main.asp" class="btn-home"><i class="ico ico-home"></i>HOME</a>
				<button type="button" class="btn-top"><i class="ico ico-top"></i>TOP</button>
			</div>
		</div>
		 -->
	</footer>
</body>
</html>
