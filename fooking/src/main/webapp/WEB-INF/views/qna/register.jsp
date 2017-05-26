<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<!-- CONTACT -->
	
	<section id="contact">
		<div class="container">
			<div class="row col-md-12 st-pricing" style="background-color: #EAEAEA;">
				<div class="col-md-12">
					<div class="section-title">
						<h1>문의하기</h1>
						<span class="st-border"></span>
					</div>
				</div>
				<div class="col-sm-4 contact-info">
					<p class="contact-content">Oh fucking my hotdog...This price is fuck. </br>여러분의 문의가 큰 도움이 됩니다.</p>
					<p class="st-address"><i class="fa fa-map-marker"></i> <strong>St.Gangnam, Korea</strong></p>
					<p class="st-phone"><i class="fa fa-mobile"></i> <strong>+00 123-456-789</strong></p>
					<p class="st-email"><i class="fa fa-envelope-o"></i> <strong>wafoo@foodcorporation.com</strong></p>
					<p class="st-website"><i class="fa fa-globe"></i> <strong>www.wanttofoodtruck.com</strong></p>
				
				</div>
				<div class="col-sm-7 col-sm-offset-1">
					<form action="php/send-contact.php" class="contact-form" name="contact-form" method="post">
						<div class="row">
							<div class="col-sm-12">
								<input type="text" name="name" required="required" placeholder="제목">
							</div>
							<div class="col-sm-6">
								<select id='size'>
									<option selected>분 류</option>
					            	<option value='price'>가격관련</option>
					            	<option value='taste'>맛관련</option>
					            	<option value='etc'>기타</option>
					         	</select>
							</div>
							<div class="col-sm-6">
								<select id='qnaMode'>
					            	<option value='secretQna'>비밀글</option>
					            	<option value='publicQna'>전체공개</option>
					         	</select>
							</div>
							<div class="col-sm-12">
								<textarea name="message" required="required" cols="30" rows="7" placeholder="문의 내용"></textarea>
							</div>
							<div class="col-sm-12" style="text-align:right;">
								<input type="submit" name="submit" value="문의하기" class="btn btn-send">
								<input type="submit" id="qnaCancel" value="취소" class="btn btn-send">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- /CONTACT -->

<%@include file="../includes/footer.jsp"%>

<script>
	$(document).ready(function(event){
		$("#qnaCancel").on("click", function(e){
			e.preventDefault();
			history.back();
		});
	});
</script>
</body>
</html>