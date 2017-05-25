<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../includes/header.jsp"%>
<style>
#miniNav, #miniNav a {
	color: #BDBDBD;
}

input[type="file"] {
	
}
</style>
<section id="pricing">
	<div id="blog" class="container">
		<div class="row col-md-12 st-pricing">
			<div class="col-md-12" style="height: 50px">
				<div class="section-title">
					<h6 class="pull-right" id="miniNav">
						<a href="/"><i class="glyphicon glyphicon-home"></i>home /</a><a
							href="/pds/list">pds</a> / <a href="/pds/data/list">data</a> /
						register
					</h6>
					<h1>data upload</h1>
					<span class="st-border"></span>
				</div>
			</div>

			<div class="col-sm-12">
				<div class="st-pricing" style="box-shadow: 0px 0px 18px #ddd;">
					<div class="st-border"></div>
					<form>
						<div class="form-group">
							<i class="glyphicon glyphicon-menu-down" style="color: red"></i>
							<label>작성자</label> <input type="text" class="form-control" placeholder="writer">
						</div>
						<div class="form-group">
							<i class="glyphicon glyphicon-menu-down" style="color: red"></i>
							<label>제목</label> <input type="text" class="form-control" placeholder="title">
						</div>
						<div class="form-group">
							<i class="glyphicon glyphicon-menu-down" style="color: red"></i>
							<label>내용</label>
							<textarea class="form-control" rows="10" cols="12"></textarea>
						</div>
						<div>
							<i class="glyphicon glyphicon-menu-down" style="color: red"></i>
							<input type="file"> <input type="file"> <input type="file">
							<p class="help-block">업로드할 파일을 선택해주세요</p>
						</div>
						<div class="st-border"></div>
					</form>


					<a class="btn btn-send">등록</a> <a class="btn btn-send">취소</a>

				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../../includes/footer.jsp"%>
</body>
</html>