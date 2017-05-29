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
					<form method="post" id="regForm">
						<div class="form-group">
							<i class="glyphicon glyphicon-menu-down" style="color: red"></i>
							<label>작성자</label> <input type="text" class="form-control" placeholder="writer" name="pwriter">
						</div>
						<div class="form-group">
							<i class="glyphicon glyphicon-menu-down" style="color: red"></i>
							<label>제목</label> <input type="text" class="form-control" placeholder="title" name="ptitle">
						</div>
						<div class="form-group">
							<i class="glyphicon glyphicon-menu-down" style="color: red"></i>
							<label>내용</label>
							<textarea class="form-control" rows="10" id="ir1" style="width: 100%" name="pcontent"></textarea>
						</div>
						
						<div class="st-border" style="margin-top:15px"></div>
					</form>


					<a class="btn btn-send" id="regBtn">등록</a> <a id="cancelBtn" class="btn btn-send">취소</a>

				</div>
			</div>
		</div>
	</div>
	<!-- 파라미터 전송을위한 HiddenForm  -->
	<form method="get" id="hiddenForm">
		<input type="hidden" name="keyword" value="${cri.keyword}">
		<input type="hidden" name="type" value="${cri.type}">
		<input type="hidden" name="size" value="${cri.size}">
	  <input type="hidden" name="page" value="${cri.page}">
	</form>
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
		console.log(oEditors.getContents);
		console.log($('#ir1').val());
		$('#regForm').submit();
	});

	//취소버튼 click 이벤트
	$('#cancelBtn').on('click',function(e){
		e.preventDefault();
		$('#hiddenForm').attr('action','/pds/data/list').submit();
	});
	

	
});
</script>
</body>
</html>