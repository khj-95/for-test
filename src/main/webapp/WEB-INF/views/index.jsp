<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Switch-Switch</title>
        <!-- Favicon-->
        <link rel="icon" type="resources/img/x-icon" href="resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
        <!-- fontawesome -->
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
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
        <!-- Header-->
        <header class="bg-dark py-6">
            <div class="container px-4 px-lg-5 my-lg-5">
                <div class="text-center text-white">
                        <h1 class="display-4 fw-bolder">Switch-Switch</h1>
                </div>
                <div class="hot-keyword" style="color: aliceblue;">
                    <span>인기키워드</span><span>#아이폰</span><span>#아이폰</span><span>#아이폰</span>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <h4 class="hot-card-title">인기카드리스트</h4>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>
                </div>
                <h4 class="hot-card-title">판매중인상품</h4>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card"> 
                            <div class="category">
                                <i class="fas fa-headphones-alt"></i>
                            </div>
                            <p class="item-name">아이폰</p>
                            <div class="item-info">
                                <p>별점 ★★★★★</p>
                                <p>별점 ★★★★★</p>
                            </div>
                            <img src="resources/img/카드.png" alt=""> 
                            <div class="item-image"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/scripts.js"></script>
    </body>
</html>