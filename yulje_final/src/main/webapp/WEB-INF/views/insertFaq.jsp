<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.accordion{
      margin:10px;
   }
   label{
      width: 756px;
   }
   input[id*="answer"]{
      display: none;
   }
   input[id*="answer"] + label {
      display: block;
      padding: 20px;
      border: 1px solid cadetblue;
      border-bottom: 0;
      color: #fff;
      font-weight: 900;
      background-color: cadetblue;
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
   input[id*="answer"] + label + div {
      max-height: 0;
      transition: all .35s;
      overflow: hidden;
      background: #ebf8ff;
      font-size: 11px;
   }
   input[id*="answer"] + label + div p {
      display: inline-block;
      padding: 20px;
      font-size: 11px;
   }
   input[id*="answer"]:checked  + label + div{
      max-height: 100px;
      background-position: 0 -30px;
      width: 756px;
   }

</style>
</head>
<body>
	<div class="col-md-9">
           <div class="p-4">
            <section id="main_section">      
               <div class="faq" >
                  <div class="text-right">
                     <form action="#" method="post" class="search">
                        <select name="option" size="1">
                        <option value="제목">제목</option>
                        <option value="내용">내용</option>
                        </select>
                        <input type="search" name="search" placeholder="검색어를 입력하세요">
                        <button id="button_search">검색</button>
                     </form>
                  </div>
               <hr>                  
                  <div class="accordion" id="acco">
                     <input type="radio" name="accordion" id="answer1"> 
                        <label for="answer1">Q : 회원가입을 하면 편리한 점이 무엇인가요?</label>
                        <div><p>ㅇ 도서관 홈페이지 이용시 반복되던 신분확인 절차가 회원가입시 한번의 인증으로 간소화 됩니다.<br>
                              ㅇ 홈페이지에서 등록된 아이디로 간편하게 도서관 서비스 신청이 가능합니다.<br>
                              ㅇ 회원가입시 입력하신 관심 주제분야의 추천도서를 제공 받을 수 있습니다.</p></div>
                     <input type="radio" name="accordion" id="answer2"> 
                        <label for="answer2">Q : 등록된 내 정보를 변경하고 싶습니다.</label>
                        <div><p>Delibrary의 회원정보 변경은 고객님께서 직접 홈페이지 로그인 후<br>
                        [마이페이지 > 회원정보 > 회원 정보 조회/수정] 에서 정보를 변경하실 수 있습니다.</p></div>
                     <input type="radio" name="accordion" id="answer3"> 
                        <label for="answer3">Q : 탈퇴는 어떻게 하나요?</label>
                        <div><p>Delibrary 홈페이지 로그인 => ‘회원정보수정’ => ‘회원탈퇴’ 메뉴 클릭</p></div>   
                     <input type="radio" name="accordion" id="answer4"> 
                        <label for="answer4">Q : 탈퇴는 어떻게 하나요?</label>
                        <div><p>Delibrary 홈페이지 로그인 => ‘회원정보수정’ => ‘회원탈퇴’ 메뉴 클릭</p></div>
                     <input type="radio" name="accordion" id="answer=5"> 
                        <label for="answer=5">Q : 탈퇴는 어떻게 하나요?</label>
                        <div><p>Delibrary 홈페이지 로그인 => ‘회원정보수정’ => ‘회원탈퇴’ 메뉴 클릭</p></div>
                                       
                        
                  </div>
               </div>
            </section>
        </div>
      </div>
</body>
</html>