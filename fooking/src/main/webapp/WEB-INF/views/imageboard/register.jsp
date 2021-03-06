<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section id="pricing">
	<div class="container">
		<div class="row">
			<div class="row col-md-12 st-pricing">
				<div class="col-md-12">
					<div class="section-title">
						<h1>ImageBoard Register</h1>
						<span class="st-border"></span>
					</div>
				</div>
				<div class="col-sm-7 col-sm-offset-1">
					<form action="/imageboard/register" class="contact-form" name="contact-form" id="f2" method="post" enctype="multiparts/form-data">
						<div class="row">
							<div class="col-sm-12">
								<input type="text" name="ititle" required="required"
									placeholder="Title">
							</div>
							<div class="col-sm-6">
								<input type="text" name="iwriter" required="required" placeholder="Writer">
							</div>
							<div class="col-sm-6">
								<input type="file" id="imagename">
								<input type="hidden" id=filename name="imagename"> 
							</div>
							<div class="col-sm-12">
								<textarea name="icontent" required="required" cols="30" rows="7"
									placeholder="Content"></textarea>
							</div>
							<div class="col-sm-12">
								<button id="btnList" class="btn btn-send">리스트</button><input type="submit" name="submit" value="등록하기"
									class="btn btn-send">
							</div>
						</div>
					</form>
					
				</div>
				<div class="col-sm-4 contact-info">
					<img id="prevImg" width="800" height="600" class="img-responsive"
						src="/resources/images/works/portfolio-6.jpg" alt="">
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../includes/footer.jsp"%>

<form id="f1" action="/imageboard/list">
	<input type="hidden" id="hpage" name="page" value="${cri.page}">
	<input type="hidden" name="type" value="${cri.type}">
	<input type="hidden" name="keyword" value="${cri.keyword}">
	
</form>

<script>
$(document).ready(function() {
	//리스트로
	$("#btnList").on("click",function(e){
		e.preventDefault();
		$("#f1").submit();
	});
	
	//파일 업로드, 썸네일출력
	$("#imagename").on("change",function(e){
		e.preventDefault();
		var $this = $(this);
		var formData = new FormData();
		formData.append("fileName", $this[0].files[0]);
		
		$.ajax({
			url:"/up/upload",
			data: formData,
			processData:false,
			contentType:false,
			type:'post',
			success:function(result){
				$("#prevImg").attr("src","/up/display?fileName="+ result);
				$("#filename").val(result);
			}
		});
	});
	
});
</script>

</body>
</html>