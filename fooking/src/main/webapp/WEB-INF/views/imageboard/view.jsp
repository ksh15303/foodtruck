<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section id="blog">
	<div class="container">
		<div class="row">
			<div class="row col-md-12 st-pricing">
				<div class="col-md-12">
					<div class="single-blog">
						<article>
							<div class="post-thumb">
								
									<img style="display: block; margin-left: auto; margin-right: auto;" class="img-responsive" src="/up/display?fileName=${vo.imagename}" alt="">
									<input type="hidden" id="img" value="${vo.imagename}">
							</div>
							<h4 class="post-title">
								${vo.ititle}
							</h4>
							<div class="post-meta text-uppercase">
								<span>${vo.updatedate }</span> <span>Write</span>
								<span>By ${vo.iwriter}</span>
							</div>
							<div class="post-article">${vo.icontent}</div>
							
							<button style="margin-top: 20px;" id="btnList" class="btn btn-send">리스트</button>
						</article>
					</div>
					<hr>
				</div>
			</div>
		</div>
	</div>
</section>

<form id="f1" action="/imageboard/list">
	<input type="hidden" name="page" value="${cri.page}">
	<input type="hidden" name="type" value="${cri.type}">
	<input type="hidden" name="keyword" value="${cri.keyword}">
</form>

<%@include file="../includes/footer.jsp"%>

<script>
$(document).ready(function(){
	
	//원본이미지로 바꿔줌
	var imagename = $("#img").val();
	imagename = imagename.split("_s_")[0]+"_" +imagename.split("_s_")[1]
	$(".img-responsive").attr("src","/up/display?fileName=" + imagename);
	
	//리스트로
	$("#btnList").on("click", function(e){
		e.preventDefault();
		$("#f1").submit();
	});
	
});

</script>
</body>
</html>