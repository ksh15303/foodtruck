<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<h1>ImageBoard Register</h1>
						<span class="st-border"></span>
					</div>
				</div>				
				<div class="col-sm-7 col-sm-offset-1">
					<form action="php/send-contact.php" class="contact-form" name="contact-form" method="post">
						<div class="row">
							<div class="col-sm-6">
								<input type="text" name="writer" required="required" placeholder="Writer*">
							</div>
							<div class="col-sm-6">
								<input type="email" name="email" required="required" placeholder="Email*">
							</div>
							<div class="col-sm-6">
								<input type="text" name="title" placeholder="Title">
							</div>
							<div class="col-sm-6">
								<input type="file" name="file">
							</div>
							<div class="col-sm-12">
								<textarea name="content" required="required" cols="30" rows="7" placeholder="Content*"></textarea>
							</div>
							<div class="col-sm-12">
								<input type="submit" name="submit" value="등록하기" class="btn btn-send">
							</div>
						</div>
					</form>
				</div>
				<div class="col-sm-4 contact-info">
					<img width="800" height="600" class="img-responsive"
								src="/resources/images/works/portfolio-6.jpg" alt="">			
				</div>
			</div>
		</div>
	</section>

<%@include file="../includes/footer.jsp"%>

</body>
</html>