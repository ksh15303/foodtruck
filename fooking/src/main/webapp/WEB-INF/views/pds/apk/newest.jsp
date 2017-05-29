<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../includes/header.jsp"%>
<style>
#pdsUL li {
	padding: 5px;
}

#pdsUL h5 {
	margin-bottom: 0px;
}

#miniNav, #miniNav a {
	color: #BDBDBD;
}
</style>
<section id="pricing">
	<div class="container ">
		<div class="row col-md-12 st-pricing">
			<div class="col-md-12">
				<div class="section-title">
					<h6 class="pull-right" id="miniNav">
						<a href="/"><i class="glyphicon glyphicon-home"></i>home /</a>&nbsp;
						<a href="/pds/list">pds</a> / newest apk /
					</h6>
					<h1>Apk Download</h1>

					<span class="st-border"></span>

				</div>
			</div>
			<div class="col-md-4">
				<div class="st-pricing text-center"
					style="box-shadow: 0px 0px 18px #ddd;">
					<h5>Newest Version</h5>
					<h3>푸드트럭짱</h3>
					<div class="st-border"></div>
					<ul id="pdsUL">
						<li><h5>Version/Build</h5></li>
						<li style="color: red"><h6>0.0.1</h6></li>
						<li><h5>Updated</h5></li>
						<li style="color: red"><h6>17-05-24</h6></li>
						<li><h5>RequestAndroid</h5></li>
						<li style="color: red"><h6>4.1 and up</h6></li>
						<li><h5>FileSize</h5></li>
						<li style="color: red"><h6>50.8 M</h6></li>
						<li><a href="" class="btn btn-send">Download</a></li>
						<li><a href="/pds/apk/previous">Download Previous version</a></li>
					</ul>

				</div>
			</div>
			<div class="st-pricing col-md-8" style="box-shadow: 0px 0px 18px #ddd;">
				<div class="st-service">
					<h2>
						<i class="fa fa-desktop"></i>Food Truck Application
					</h2>
					<p>
						사용자의 편의를 제공합니다.<br>유용한 어플입니다. 아래사진은 우리 어플 사진들어갈예정
					</p>
				</div>

				<div class="st-service" style="height: 360px;">
					<img src="/resources/images/abc.png" width="100%" height="100%">
				</div>
			</div>

		</div>
	</div>
</section>

<%@include file="../../includes/footer.jsp"%>
</body>
</html>