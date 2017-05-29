<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section id="blog">
	<div class="container">
		<div class="row">
			<div class="row col-md-12 st-pricing">
				<div class="col-md-12">
					<div class="single-blog">
						<article style="text-align: center;">
							<div class="post-thumb">

								<img
									style="display: block; margin-left: auto; margin-right: auto;"
									class="img-responsive"
									src="/up/display?fileName=${vo.imagename}" alt=""> <input
									type="hidden" id="img" value="${vo.imagename}">
							</div>
							<h4 class="post-title">${vo.ititle}</h4>
							<div class="post-meta text-uppercase">
								<span>${vo.updatedate }</span> <span>Write</span> <span>By
									${vo.iwriter}</span>
							</div>
							<div class="post-article">${vo.icontent}</div>

							<button style="margin-top: 20px;" id="btnList"
								class="btn btn-send">리스트</button>
							<button style="margin-top: 20px;" id="btnUp" class="btn btn-send">수정하기</button>
							<button style="margin-top: 20px;" id="btnDel"
								class="btn btn-send">삭제하기</button>
						</article>
					</div>
					<hr>
				</div>
			</div>
		</div>
	</div>
</section>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel"></h4>
			</div>
			<div class="modal-footer">
				<button type="button" id="btnDelModal" class="btn btn-primary">예</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">아니요</button>				
			</div>
		</div>
	</div>
</div>

<form id="f1" action="/imageboard/list">
	<input type="hidden" name="page" value="${cri.page}"> <input
		type="hidden" name="type" value="${cri.type}"> <input
		type="hidden" name="keyword" value="${cri.keyword}">
</form>

<%@include file="../includes/footer.jsp"%>

<script>
	$(document).ready(function() {

		//원본이미지로 바꿔줌
		var imagename = $("#img").val();
		imagename = imagename.split("_s_")[0] + "_" + imagename.split("_s_")[1]
		$(".img-responsive").attr("src", "/up/display?fileName=" + imagename);

		//리스트로
		$("#btnList").on("click", function(e) {
			e.preventDefault();
			$("#f1").submit();
		});
		//모달
/* 		$("#btnDel").on("click",function(e){
			e.preventDefault();
			$("#myModalLabel").text("삭제하시겠습니까?");
			$("#myModal").modal();
		}); */
		//삭제하기
		$("#btnDel").on("click",function(e){
			e.preventDefault();
			var $f1 = $("#f1");
			$f1.append("<input type='hidden' name='ino' value='${vo.ino}'>");
			$f1.attr("action","/imageboard/view");
			$f1.attr("method", "POST");
			$f1.submit();			
		});
		//수정버튼 클릭 이벤트
		$("#btnUp").on("click",function(e){
			var $f1 = $("#f1");
			$f1.append("<input type='hidden' name='ino' value='${vo.ino}'>");
			$f1.attr("action","/imageboard/update");
			$f1.submit();
		});

	});
</script>
</body>
</html>