<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>



<style>

.col-sm-6 {

    border-top : black;
}



</style>


<section id="pricing">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h1>Notice Register</h1>
					<span class="st-border"></span>
				</div>
			</div>

			<div class="col-sm-7 col-sm-offset-1" style = "border: black solid 1px;">
				<div class="box box-info">
					<form class="contact-form" name="contact-form" method="post">
						<div class="row" >

							<div class="col-sm-6">
								<input type="text" name="ntitle" placeholder="Title">
							</div>

							<div class="col-sm-12">
								<textarea name="ncontent" required="required" cols="30" rows="7"
									placeholder="Content*"></textarea>
							</div>

							<div class="col-sm-6">
								<input type="text" name="nwriter" required="required"
									placeholder="Writer*">
							</div>

							<div class="col-sm-12">
								<input type="submit" name="submit" value="등록하기"
									class="btn btn-send">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="../includes/footer.jsp"%>


</body>
</html>