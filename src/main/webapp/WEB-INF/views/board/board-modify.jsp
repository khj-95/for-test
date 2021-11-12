<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/board/board.css">
<style type="text/css">
.section{
	margin-top: 30px;
	width: 1200px;
	display: flex;
	justify-content: center;
	margin-bottom: 60px;
}
.frm_post{
	width: 80%;
	height: 100%;
}
.frm_header_area{
	width: 100%;
	height: 46px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	border-bottom: solid;
	border-width: 1px;
}
.sub_title{
	font-size: 22px;
	font-weight: bolder;
}
.btn_area{
	height: 36px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}
.btn_area>button{
	width: 100px;
	height: 30px;
	font-size: 15px;
	background-color: #eeeeee;
	margin-left:10px;
	
	
}
/*  */
.frm_title_area{
	width: 100%;
	height: 70px;
	display: flex;
	align-items: center;
}
.frm_title_area>div{
	width: 100%;
	height: 40px;
	display: flex;
	border: solid;
	border-width: 1px;
}
.select_subject{
	width: 20%;
	height: 40px;
	font-size: 15px;
	border: none;
	background-color: rgba(0,0,0,0.1);
	text-align: center;
}
.post_title{
	width: 80%;
	height: 38px;
	font-size: 15px;
	border: none;
	margin-left: 5px;
}

/*  */
.frm_content_area{
	width: 100%;
	height:100%;
	display: flex;
	justify-content: center;
}
.frm_content_area>textarea{
	width:1000px; 
	height:400px; 
    resize:none;
}
.btn{
	border-color: transparent;
}
.btn_area>a {
    width: 100px;
    height: 30px;
    font-size: 15px;
    background-color: #eeeeee;
    line-height: 28px;
    text-align: center;
    margin-left: 10px;
    color: black;
}
.add_file_box{
	margin-top: 10px;
}
</style>
</head>
<body>
  <section>
    <div class="container">
    
		<div class='section'>
			<form class='frm_post' action="/board/upload" method="post" enctype="multipart/form-data">
				<div class='frm_header_area'>
					<h2 class='sub_title'>정보공유 수정페이지</h2>
					
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

							<a id="btnModify" class="btn" href="/board/modify-board?bd_idx=${datas.board.bdIdx }">수정</a>
							<a id="btnSubmit" class="btn" href="/board/delete-board?bd_idx=${datas.board.bdIdx }">삭제</a>
					</div>
				
			</form>
		</div>
		
	</div>
  </section>
</body>
</html>