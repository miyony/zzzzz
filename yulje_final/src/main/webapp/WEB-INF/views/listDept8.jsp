<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 호버를 사용할때 과이름과 클래스이름을 배열에 넣어서 처리하고 싶으나 
    	 할줄 몰라서 일일이 15개의 호버를 만들어주는 버전
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/*사이드바 start*/
.side_ul{
  float: right;
  list-style-type: none;
  margin: 0px;
  padding: 0px;
  padding-top: 20px;
  width: 200px;
  margin-right: 50px;
  color: #5D5D5D;
}

.side_ul > li {
    display: block;
    width: 200px;
    line-height: 50px;
    color: #111;
    font-size: 15px;
    border: 1px solid #ddd;
    font-weight: bold;
    font-family: 'noto-sans';
    text-align: center;
    color: #5D5D5D;
    
    
}

.leftTop {
    color: #94CCC4;	/* 각 페이지 색으로 지정*/
    font-family: 'noto-sans';
    text-align: center;
    margin-bottom: 10px;
}

.side_ul li a:hover,
.side_ul li a:focus {
	background-color:#94CCC4;	/* 각 페이지 색으로 지정*/
	width: 200px;
    line-height: 50px;
    display: block;
    color: #5D5D5D;
}   

.side_ul li a{
	text-decoration:none;
	color: #5D5D5D;
}

/*사이드바 end*/


   * {
     box-sizing: border-box;
   }
   /* 최종 상단에 진료과 라고 적힌 부분*/
   #name{
   	font-size: 30px;
   	border-left: 5px solid #CBE2B8;
   	padding-left: 40px;
   }
   
   /* 왼쪽에 외과 내과 일반과 팻말있는 부분 */
	.main_left{
	display: inline;
	float: left;
  	margin: 20px 0px 10px 10px;
  	height: 500px;
  	/*border: 1px solid pink; */
	}
	
	/* 상단에 검색, 정렬 있는 부분 */
	.main_search{
	 display: block;
	 height:70px;
	 padding-top:15px;
	 border-bottom: solid 3px #CBE2B8;
	}
	
   .main_top {
   	  margin-top:20px;
      justify-content: center;
      display: flex;     
   }
   .main_under {
      justify-content: center;
      display: flex;      
   }
   
   .main_middle {
      justify-content: center;
      display: flex;      
   }
   /* 아이콘 밑 글자 */
   .main_top h2{
   	 margin: 10px 0px 0px 0px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 20px;
   }
   /* 아이콘 안의 글자들 h3태그 h4태그*/
   h3{
    margin: 0px;
   	padding-top:30px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 20px;
   	color: white;
   }
   h4{
    display:inline;
    margin: 0px 12px 0px 12px;
   	padding:0px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 15px;
   	color: white;
   }
   
   /* 아이콘 밑 글자 */
   .main_middle h2{
   	 margin: 10px 0px 0px 0px;
   	font-size: 20px;
   }
   /* 아이콘 밑 글자 */
   .main_under h2{
   	margin: 10px 0px 0px 0px;
   	font-size: 20px;
   }
   
   
   .main_hover{
   	  background-color: #94CCC4;
      width: 160px;
      height: 170px;
      margin: 10px;
   }
   
   .main_block{
      border: 1px solid #94CCC4;
      width: 160px;
      height: 170px;
      margin: 0px 20px 20px 0px;
       /* 이미지를 가운데에 넣으려고 해봄 */
      text-align:center;
   }
   
   
   

   body {
     margin:0;
  	font-family: Arial, Helvetica, sans-serif;
   }
   
   /* Style the header */
   .header {
     /*background-color: #f1f1f1;
     padding: 30px;
     text-align: center;
     font-size: 35px;
     clear: both;
     */
   }
   
   /* Create three unequal columns that floats next to each other */
   .column {
    float: left;
  padding: 10px;
  height: 1000px;

   }
   .column.side {
   		 width: 300px;
	  
	}
	/* Middle column */
	.column.middle {
	width: 1000px;
	}
   
   
   
  
   

}   
	/*main_search 속 - 진료과 목록 위에 정렬*/
	.search_radio{
		float: left;
		margin-top:8px;
		padding-top:10px;
		height:40px;
	}
	
	.container{
	 font-size: 19px;
	 margin: 0px 18px 0px 8px;
	}

	/*main_search 속 - 진료과 목록 위에 검색창*/
	.search{
	float: right;
	height:50px;
	margin: 0px;
	padding:5px 0px 0px 0px;
	}
	
	
	/*main_search 속 - 진료과 목록 위에 검색창*/
	.text{
	width:280px;
	height: 35px;
    padding-right: 10px;
    padding-left: 10px;
    border: 1px solid #ccc;
    color: #666;
    font-size: 16px;
	}
	.btnSearch{
	 background-color: #CBE2B8;
	 width: 70px;
     height: 35px;
     padding: 0 10px;
     color: #fff;
     font-size: 16px;
     letter-spacing: -.8px;
     line-height: 1.5;
	}
	.a{
		
	}
	
	/*진료과 아이콘 설정*/
   .icon{
    width:100px;
    height:100px;
   }  
	.icon2{
	display:inline;
	margin:20px 10px 0px 15px;
	}
	
	/* 왼쪽 main_left의 메뉴들 (내과 외과 )*/
   .main_left_item{
   	border: solid 1px #CBE2B8;
   	width: 95px;
    height: 50px;
    background-color: #CBE2B8;
   }
   .main_left_item h2{
   	padding-top:8px;
   	text-align: center;
   	margin:0px;
   	color: white;
   }
   .none{
   	margin-top:140px;
   }
   
   .row{
   width:1600px;
	margin:0 auto;
	padding-top: 140px;
	position: relative;
   }
   
   /* Clear floats after the columns */
   .row:after {
     content: "";
     display: table;
     clear: both;
   }
   
   /* Style the footer */
   .footer {
     background-color: #f1f1f1;
     padding: 10px;
     text-align: center;
   }
   
   /* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
   @media (max-width: 600px) {
     .column.side, .column.middle {
       width: 100%;
     }  

   }
   /*footer start*/
#footer .family-site dd li {
    margin-bottom: 12px;
}


#footer .family-site {
    float: left;
    width: 250px;
    height: 184px;
    padding: 15px 28px;
    border-left: 1px solid #4e5157;
}

#hos_ul > li {
    list-style: none;
    display: list-item;
    text-align: -webkit-match-parent;
    
}

.clearfix > li {
    list-style: none;

}

#hos_ul {
    list-style-type: disc;
    display: block;
    padding: 0px;
    font-size: 13px;
    text-align: left;
}

#footer .btn-home {
    position: absolute;
   
    font-size: 11px;
    text-align: center;
    text-decoration:none;
    display: block;
    padding-top: 13px;

}

*, *:before, *:after {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -o-box-sizing: border-box;
}
.inner > a {
    color: #333;
    text-decoration: none;
    font-family: "NotoSans-Regular";
    vertical-align: middle;
}


.inner > a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#footer {
    padding: 35px 0 88px 0;
   /* background: #7A9AA0;*/
    font-size: 16px;
    color: #5D5D5D;
    text-align: center;
}

#footer .info {
    float: left;
    width: 700px;
    height: 184px;
    padding-top: 15px;
}

#footer .tel-num {
    float: left;
    width: 295px;
    height: 184px;
    padding-top: 15px;
    border-left: 1px solid #4e5157;
    text-align: center;
}

#footer .family-site {
    float: left;
    width: 305px;
    height: 184px;
    padding: 15px 28px;
    border-left: 1px solid #4e5157;
}

#footer a{
	text-decoration:none;
	color: #5D5D5D;
	text-align:center;
}

.inner {
    max-width: 1300px;
    margin: 0 auto;
    position: relative;
}



footer{
    display: block\9;
    margin: 0\9;
    padding: 0\9;
    display: block;
}

.btn-top{
	border: 1px solid #ccc;
}

/*footer end*/
   
   /*진료과*/
/* .deptp{ */
/* 	display: inline-block; */
/* } */

</style>
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){

// 	var deptname
// 	var deptimg

	$(document).on("click","#ajaxtest_btn1",function(){
		$(".main_top").empty()
		$(".main_middle").empty()
		$(".main_under").empty()
		
		$.ajax("/listDept1", {success:function(data){
			for(var deptdata of data){
				if(deptdata.dept_group == '내과'){
					var deptname = $("<h2></h2>").html(deptdata.dept_name)
					var deptimg = $("<img>").attr("src","./image/"+deptdata.icon).addClass("icon")
					var span1 = $("<span></span>").append(deptname)
					var span2 = $("<span></span>").append(deptimg)
					var div = $("<div></div>").addClass("main_block")
					div.append(span1, span2)
					$(".main_top").append(div);


					$(document).on("mouseenter",".main_block",function(){
						 $(this).empty();
						 $(this).addClass("main_hover");
						 
						 $(this).append("<span><h3>"+deptdata.dept_name+"</h3></span>");
						 $(this).append("<span><img src='./image/doc22.jpg' class='icon2'></span>");
						 $(this).append("<span><img src='./image/r.jpg' class='icon2'></span>");
						 $(this).append("<span><h4><a href='listDoctor?deptno='"+deptdata.dept_no+">의료진</a></h4></span>");
						 $(this).append("<span><h4>예약</h4></span>");
					});
					$(document).on("mouseleave",".main_hover",function(){
						$(this).empty();
//						var idx = $(this).attr("idx");
						$(this).append("<span>"+span1+"</span>","<span>"+span2+"</span>");
						$(this).removeClass("main_hover");
					});
					
				}
				if(deptdata.dept_group == '외과'){
					var deptname = $("<h2></h2>").html(deptdata.dept_name)
					var deptimg = $("<img>").attr("src","./image/"+deptdata.icon).addClass("icon")
					var span1 = $("<span></span>").append(deptname)
					var span2 = $("<span></span>").append(deptimg)
					var div = $("<div></div>").addClass("main_block")
					div.append(span1, span2)
					$(".main_middle").append(div);



					$(document).on("mouseenter",".main_block",function(){
						 $(this).empty();
						 $(this).addClass("main_hover");
						 
						 $(this).append("<span><h3>"+deptdata.dept_name+"</h3></span>");
						 $(this).append("<span><img src='./image/doc22.jpg' class='icon2'></span>");
						 $(this).append("<span><img src='./image/r.jpg' class='icon2'></span>");
						 $(this).append("<span><h4><a href='listDoctor'>의료진</a></h4></span>");
						 $(this).append("<span><h4>예약</h4></span>");
					});
					$(document).on("mouseleave",".main_hover",function(){
						$(this).empty();
						var idx = $(this).attr("idx");
						$(this).append("<span>"+deptimg+"</span>","<span>"+deptname+"</span>");
						$(this).removeClass("main_hover");
					});
				}
				if(deptdata.dept_group == '일반과'){
					var deptname = $("<h2></h2>").html(deptdata.dept_name)
					var deptimg = $("<img>").attr("src","./image/"+deptdata.icon).addClass("icon")
					var span1 = $("<span></span>").append(deptname)
					var span2 = $("<span></span>").append(deptimg)
					var div = $("<div></div>").addClass("main_block")
					div.append(span1, span2)
					$(".main_under").append(div);



					$(document).on("mouseenter",".main_block",function(){
						 $(this).empty();
						 $(this).addClass("main_hover");
						 
						 $(this).append("<span><h3>"+deptdata.dept_name+"</h3></span>");
						 $(this).append("<span><img src='./image/doc22.jpg' class='icon2'></span>");
						 $(this).append("<span><img src='./image/r.jpg' class='icon2'></span>");
						 $(this).append("<span><h4><a href='listDoctor'>의료진</a></h4></span>");
						 $(this).append("<span><h4>예약</h4></span>");
					});
					$(document).on("mouseleave",".main_hover",function(){
						$(this).empty();
						var idx = $(this).attr("idx");
						$(this).append("<span>"+deptimg+"</span>","<span>"+deptname+"</span>");
						$(this).removeClass("main_hover");
					});
				}
			} //반복문끝
		}}) //ajax끝
	}) //버튼클릭이벤트끝

	$(document).on("click","#ajaxtest_btn2",function(){
// 		$("#ajaxtest_btn2").click(function(){
			$(".main_top").empty()
			$(".main_middle").empty()
			$(".main_under").empty()
			$.ajax("/listDept2", {success:function(data){
				for(var deptdata of data){
					
					var deptname = $("<h2></h2>").html(deptdata.dept_name)
					var deptimg = $("<img>").attr("src","./image/"+deptdata.icon)
					var span1 = $("<span></span>").append(deptname)
					var span2 = $("<span></span>").append(deptimg)
					var div = $("<div></div>").addClass("main_block")
					div.append(span1, span2)
					$(".main_top").append(div);
					
				} //반복문끝
			}}) //ajax끝
		}) //버튼클릭이벤트끝
		
		

// 	$(document).on("mouseenter",".main_block",function(){
// 		// on안에 (이벤트 이름, 대상자, 함수)
// 		// 미래에 만들어진 노드에도 이벤트를 설정하는 방법(이미 만들어진 노드 포함)
// 		 $(this).empty();
// 		 $(this).addClass("main_hover");
		 
// 		 var idx = $(this).attr("idx");
// 		 $(this).append("<span><h3>"+deptname[idx]+"</h3></span>");
// 		 $(this).append("<span><img src='./image/doc22.jpg' class='icon2'></span>");
// 		 $(this).append("<span><img src='./image/r.jpg' class='icon2'></span>");
// 		 $(this).append("<span><h4><a href='listDoctor'>의료진</a></h4></span>");
// 		 $(this).append("<span><h4>예약</h4></span>");
// 		/*
// 		var idx = $(this).attr("idx");
// 		var id = $(this).attr("id");
// 		mouseIn(idx,id);*/
// 	});

// 	$(document).on("mouseleave",".main_hover",function(){
// 		$(this).empty();
// 		var idx = $(this).attr("idx");
// 		$(this).append("<span>"+image[idx]+"</span>","<span>"+deptname[idx]+"</span>");
// 		$(this).removeClass("main_hover");
// 	});
	
	
	
	//꼼수 부분- 다른줄로 옮겨가면 현재줄에서 mouseleave가 먹지 않은 부분을 치워버림 - 없어도 되는 코드
// 	$(document).on("mouseleave",".main_top",function(){
// 		$(this).empty();
// 		$(this).removeClass("main_hover");
// 		$.each(deptname, function(idx){
// 			if (idx <= 4) {
// 				var div = $("<div id='main_top"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
// 				$(div).addClass("main_block");
// 				$(div).attr("idx",idx);
// 				$(".main_top").append(div);
// 			}
// 		});
// 	});
// 	$(document).on("mouseleave",".main_middle",function(){
// 		$(this).empty();
// 		$(this).removeClass("main_hover");
// 		$.each(deptname, function(idx){
// 			if((idx >4)&(idx <=9)){
// 				var div = $("<div id='main_middle"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
// 				$(div).addClass("main_block");
// 				$(div).attr("idx",idx);
// 				$(".main_middle").append(div);
// 			}
// 		});
// 	});
// 	$(document).on("mouseleave",".main_under",function(){
// 		$(this).empty();
// 		$(this).removeClass("main_hover");
// 		$.each(deptname, function(idx){
// 			if((idx >9)&(idx <=14)){
// 				var div = $("<div id='main_under"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
// 				$(div).addClass("main_block");
// 				$(div).attr("idx",idx);
// 				$(".main_under").append(div);
// 			}
// 		});
// 	});
	//꼼수 끝
});
			
</script>
</head>
<body>

   
<!-- Header Start -->
<%--      <jsp:include page="/header.jsp"></jsp:include> --%>
<!-- 	Header End -->
   
   <div class="row">
   
     <div class="column side" id="column_side_left">
     		<!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">진료과/의료진</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">진료과</a></li>			<!-- 사이드 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">의료진</a></li>
		  
		  

		</ul>
  	</div>
  	
  	<!-- //sidebar -->
     	
     	</div>
     
     <!-- 메인 -->
     <section>
     <div class="column middle">
     	<div id="nameDiv">
     	<span><h1 id="name">진료과</h1></span>
     	</div>
     	<!-- 진료과 위에 검색이랑 정렬 놓는 부분 -->
     	<div class="main_search">
     	
     	
     	
     	
     	
     	<!-- ajax버튼테스트용 -->
     	<div>
     		<button id="ajaxtest_btn1">기본</button>
     		<button id="ajaxtest_btn2">가나다순</button>
     	</div>
     	
     	
     	
     	
     	
     		<span class="search_radio">
	     		<label class="container">
					<input type="radio" name="array" checked="checked"/>
					<span class="checkmark1"></span>
					<font size="3">기본</font>
				</label>
				<label class="container">
					<input type="radio" name="array"/>
					<span class="checkmark1"></span>
					<font size="3">가나다순</font>
				</label>
			</span>
     		<div class="search">
     			<input class="text" type="text" placeholder="진료과 또는 질병명을 입력해주세요">
     			<button class="btnSearch">검색</button>
     		</div>
     	</div>
     	
     	
     	
     	
     	<!-- ajax으로 진료과 목록표시 테스트 -->
     	<div id="ajaxtest1" style="border: 1px solid black"></div>
     	<div id="ajaxtest2" style="border: 1px solid black"></div>
     	<div id="ajaxtest3" style="border: 1px solid black"></div>
	    
	    
	    
	    
	    
	    
	    
	     	<div class="main_left">
	     	<!-- 왼쪽에 외과,내과,일반과 팻말 -->
	     		<div class="main_left_item">
	     			<span><h2>내과</h2></span>
	     		</div>
	     		<!-- none은 그냥 빈 공간용 -->
	     		<div class="none">
	     			<span></span>
	     		</div>
	     		<div class="main_left_item">
	     			<span><h2>외과</h2></span>
	     		</div>
	     		<div class="none">
	     			<span></span>
	     		</div>
	     		<div class="main_left_item">
	     			<span><h2>일반과</h2></span>
	     		</div>
	     		</div>
	        <div class="main_top">
	       
	        </div>
	        
	        <div class="main_middle">
	        
	        </div> 
	           
	      <div class="main_under">
	         
	       </div>   
	         
	      </div>
	        
	     
   <div class="column side" id="column_side_right" > </div>
   </section>
   </div>
   <!-- footer -->
   <footer id="footer">
		<div class="inner">
			<div class="info">
				<ul class="footer-link">
					<li><a href="#" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/privacy_policy.asp', this, '.popup-privacyList'); return false;"><span class="white fs14">개인정보처리방침</span></a></li>
					<li class="link-policy"><a href="#popupVideoPolicy" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/video_policy.asp', this,'.popup-videoPolicy'); return false;">영상정보처리기기운영방침</a></li>
					<li><a href="" onclick="ajaxPopup('.ajaxPopup', '', this.href, this,'.popup-popRights'); return false;">환자권리장전</a></li>
					<!--<li><a href="#">사이트맵</a></li>-->
				</ul>
				<div class="copyright">
					<address>04108 서울 마포구 백범로 23 구프라자 3층</address>
					<span>HELLJAVA COPYRIGHT (C)2018 YULJE UNIVERSITY HOSPITAL.ALL RIGHTS RESERVED.</span>
				</div>
				<div class="etc">
					<i class="ico ico-certify">보건복지부 인증 의료기관</i>
					<div class="sns-link">
						<a href="" target="_blank" title="새창"><i class="">facebook</i></a>
						<a href="" target="_blank" title="새창"><i class="">blog</i></a>
                        <a href="" target="_blank" title="새창"><i class="">YouTube</i></a>
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
						<ul id="hos_ul">
							<li><a href="">율제중앙의료원</a></li>
							<li><a href="">서울대병원</a></li>
							<li><a href="">일산백병원</a></li>
							<li><a href="" target="_blank" title="새창열림">율제대학교</a></li>
						</ul>
					</dd>
				</dl>

			</div>
		</div>
		<!-- footer_menu -->
		<div class="footer-menu">
			<div class="inner">
				<ul class="clearfix">
					<li><a href="">예약/조회/발급</a></li>
					<li><a href="" onclick="open(this.href, '_swin_', 'width=1120,height=800,scrollbars,resizable');return false;"></i>의료진/의료과</a></li>
					<li><a href="">이용안내</a></li>
					<li><a href="">건강정보</a></li>
					<li><a href="">병원소개</a></li>
					<li><a href="">전화번호안내</a></li>
					<li><a href="">오시는길</a></li>
				</ul>
				<a href="" class="btn-home">HOME</a>
				<button type="button" class="btn-top">TOP</button>
			</div>
		</div>
		<!--// footer_menu -->
	</footer>
	
	<!-- //footer -->
   

</body>
</html>