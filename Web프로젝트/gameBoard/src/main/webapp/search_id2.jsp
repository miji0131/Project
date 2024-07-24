<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./resources/css/member_join.css"
	type="text/css">
	
<div class="container">
    <div class="inner">
    	<div class="search_content_header">
			<h3 class="header-text">아이디 찾기</h3>
		</div>
        <h1 class="simple_logo4">
            <a href="index.jsp" class="link">
                <img src="./resources/images/로고3.png">
 			</a>
 		</h1>
 	</div>
 	
 	<div class="form_content">	
 	<p class="choice_m">회원정보에 등록한 휴대전화로 인증하기</p>
    	<form id="search_form" method="post" action="" class="member_search_form">
    		<div class="form_list">                          
				<!-- 이름 입력 --> 
        		<div class="form_item user" id="divName">
        			<input type="text" id="name" name="name" placeholder="이름" class="input" value="" maxlength="40" />
        		</div> 
        		<!-- 휴대전화 -->
            	<div class="form_item phone" id="divPhoneNo">
                	<input type="tel" id="phoneNo" name="phoneNo" placeholder="휴대전화번호" class="input" value="" maxlength="16" />
                </div>      
        </div>
        <div class = "button_container3" ></div>
   			<button type ="button" id="next_button3" name="next_button3" ><h2>다음</h2></button>
   			<button type ="button" id="return_button3" name ="return_button3"><h2>돌아가기</h2></button>
   		</div>
        </form> 
         