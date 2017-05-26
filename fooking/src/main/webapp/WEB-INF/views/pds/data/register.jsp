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
							<textarea class="form-control" rows="10" id="ir1" style="width: 100%"></textarea>
						</div>
						
						<div class="st-border" style="margin-top:15px"></div>
					</form>


					<a class="btn btn-send" id="regBtn">등록</a> <a class="btn btn-send">취소</a>

				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../../includes/footer.jsp"%>

<script type="text/javascript" src="js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	//textarea editor 임.
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "ir1",
	    sSkinURI: "bisunEditor.html",
	    fCreator: "createSEditor2"
	});
	
	//등록버튼 click event.
	$('#regBtn').on('click',function(e){
		e.preventDefault();
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		console.log($('#ir1').val());
	});

});
</script>
</body>
</html>