<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>



<style>

.st-pricing {
    background-color: #fff;
    padding: 40px;
    margin-top: 30px;
    -webkit-transition: all 0.2s ease-in-out;
    -moz-transition: all 0.2s ease-in-out;
    -ms-transition: all 0.2s ease-in-out;
    -o-transition: all 0.2s ease-in-out;
    transition: all 0.2s ease-in-out;
}

#ad {
	display: inline-block;
    padding: 6px 12px;
    margin-bottom: 20px;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    height : 36px; 
    width : 84px;
}

</style>


<section id="pricing">
	<div class="container" >
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
					<h1>Notice Register</h1>
					<span class="st-border"></span>
				</div>
			</div>

			<div class="col-sm-9 col-sm-offset-1"  style = "border-bottom: black solid 1px; border-top: black solid 1px;">
			
				<div class="st-pricing">
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
								<a id = "ad" href = "/notice/list" type = "button" class = "btn btn-send"> 취소 </a>

							</div>
						</div>
					</form>
				</div>
				<br>
			</div>
		</div>
	</div>
</section>

<%@include file="../includes/footer.jsp"%>


</body>
</html>