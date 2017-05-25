<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<style>
#miniNav, #miniNav a {
	color: #BDBDBD;
}
</style>
<section id="pricing">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title">
				<h6 class="pull-right" id="miniNav">
						<a href="/"><i class="glyphicon glyphicon-home"></i></a>&nbsp;pds
					</h6>
					<h1>PDS</h1>
					<span class="st-border"></span>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="st-pricing text-center">

					<h2>
						<i class="glyphicon glyphicon-phone"></i><br>Mobile Apk
					</h2>
					<p>
						최신버전<br>그리고 이전버전들의
					<h5 style="margin-bottom: 5px">apk</h5>
					파일을 다운로드 하실수있습니다.
					</p>

					<div class="st-border"></div>
					<a href="/pds/apk/newest" class="btn btn-send">GO-></a>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="st-pricing text-center">

					<h2>
						<i class="glyphicon glyphicon-gift"></i><br>Festival
					</h2>
					<p>
						서울시의 모든<br>
					<h5 style="margin-bottom: 5px">푸드트럭행사</h5>
					정보자료를 <br>확인하실수있습니다.
					</p>

					<div class="st-border"></div>
					<a href="/pds/festival/list" class="btn btn-send">GO-></a>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="st-pricing text-center">

					<h2>
						<i class="glyphicon glyphicon-floppy-disk"></i><br>DATA
					</h2>
					<p>
						다양하고 유용한<br>
					<h5 style="margin-bottom: 5px">각종자료를</h5>
					받아보실수 있습니다. <br></br>
					</p>

					<div class="st-border"></div>
					<a href="/pds/data/list" class="btn btn-send">GO-></a>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../includes/footer.jsp"%>
</body>
</html>