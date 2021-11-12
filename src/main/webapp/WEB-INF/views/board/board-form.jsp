<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Switch-Switch</title>
        <!-- Favicon-->
        <link rel="icon" type="resources/img/x-icon" href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/webapp/resources/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/styles.css">
        <!-- fontawesome -->
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
   		<!-- css -->
   		 <link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/board/board.css">
    </head>
    
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Switch-Switch</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="#!">교환마켓</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">나눔마켓</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">게시판</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">내카드</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                        <!--- <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li> -->
                    </ul>
                    <form class="d-flex navbar-dark">
                        <div class="login-join">
                            <a href="" class="login">로그인</a>
                            <a href="">회원가입</a>
                        </div>
                        <!-- <button class="btn btn-outline-dark" type="submit">
                            <i class=""></i>
                            로그인
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button> -->
                    </form>
                </div>
            </div>
        </nav>
        
        
  <section>
    <div class="container">
    
		<div class='section'>
			<form class='frm_post' action="/board/upload" method="post" enctype="multipart/form-data">
				<div class='frm_header_area'>
					<h2 class='sub_title'>정보공유 작성페이지</h2>
					
				</div>
				<div class='frm_title_area'>
					<div>
					<input type='text' class="post_title" name="title" required="required" placeholder='제목을 입력하세요'>
					</div>
				</div>
				<div class='frm_content_area'>
					<textarea id="editor1" name="content" placeholder="내용을 입력하세요" data-sample-short></textarea>
				</div>
				<div class="add_file_box">파일 : <input type="file" name="files" id="contract_file" multiple/></div>
				<div class='btn_area'>
						<a class="btn" href="/switchswitch/board/board-list">목록</a>
						<button id="btnSubmit" class="btn">작성하기</button>
					</div>
				
			</form>
		</div>
		
	</div>
  </section>
</body>
</html>