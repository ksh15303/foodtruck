<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../includes/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>​

<style>
#miniNav, #miniNav a {
	color: #BDBDBD;
}
</style>
<section id="pricing">
	<div id="blog" class="container">

		<div class="row col-md-12 st-pricing">
			<div class="col-md-12" style="height: 50px">
				<div class="section-title">
					<h6 class="pull-right" id="miniNav">
						<a href="/"><i class="glyphicon glyphicon-home"></i>home / </a> <a
							href="/pds/list">pds</a> / <a href="/pds/data/list">data</a>
					</h6>
					<h1>data</h1>
					<span class="st-border"></span>
				</div>
			</div>

			<div class="col-sm-12">
				<div class="st-pricing" style="box-shadow: 0px 0px 18px #ddd;">
					<div class="st-border"></div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th width="15%"><h4 align="center">작성자</h4></th>
								<th width="55%"><h4 align="center">제목</h4></th>
								<th width="10%"><h4 align="center">작성일</h4></th>
								<th width="10%"><h4 align="center">수정일</h4></th>
								<th width="10%"><h4 align="center">조회수</h4></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${dataList}" var="data">
								<tr>
									<th>
										<h6 align="center">${data.pwriter}</h6>
									</th>
									
									<th>
										<h6 align="center">
											<a class="sview" href="/pds/data/view">${data.ptitle}</a><i
												style="color: #1266FF" class="glyphicon glyphicon-paperclip"></i>

										</h6>
									</th>

									<th>
										<h6 align="center">
											<fmt:parseDate var="parsedDate" value="${data.regdate}"
												pattern="yyyy-MM-dd HH:mm:ss" />
											<fmt:formatDate var="regdate" value="${parsedDate}"
												pattern="yy-MM-dd" />
											${regdate}​
										</h6>
									</th>

									<th>
										<h6 align="center">
											<fmt:parseDate var="parsedDate" value="${data.updatedate}"
												pattern="yyyy-MM-dd HH:mm:ss" />
											<fmt:formatDate var="updatedate" value="${parsedDate}"
												pattern="yy-MM-dd" />
											${updatedate}
										</h6>
									</th>

									<th>
										<h6 align="center">${data.viewcount}</h6>
									</th>
								</tr>
							</c:forEach>
						</tbody>

					</table>
					<h4 align="center">${noSearch}</h4>
					
					<div>
						<div class="pull-right">
							<a href="/pds/data/register" id="regBtn" class="btn btn-send" style="margin-top: 0px">글작성</a>
						</div>
						<div class="blog-search" style="width: 80%;">
							<form method="get">
							  <input type="hidden" id="hpage" name="page" value="1">
							  <input type="hidden" id="hsize" name="size" value="${cri.size}">
							  <select name="type" style="width: 10%; float: left;">
									<option value="x" ${cri.type eq 'x'?'selected':''}>-----</option>
									<option value="t" ${cri.type eq 't'?'selected':''}>제목</option>
									<option value="w" ${cri.type eq 'w'?'selected':''}>작성자</option>
								</select> 
								<input type="text" name="keyword" style="width: 20%;" value="${cri.keyword}">
								
								<span class="pull-left">
									<button id="searchBtn" class="search-submit" type="submit">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</form>
						</div>
					</div>

				</div>
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
						<li><a href="${pageMaker.start-1}"><<</a></li>
					</c:if>
					
					<c:forEach begin="${pageMaker.start}" end="${pageMaker.end}" var="idx">
						<li class='${idx == pageMaker.current?"active":""}'><a href="${idx}">${idx}</a></li>
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li><a href="${pageMaker.end+1}">>></a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- 파라미터 전송을위한 HiddenForm  -->
	<form method="get" id="hiddenForm">
		<input type="hidden" name="keyword" value="${cri.keyword}">
		<input type="hidden" name="type" value="${cri.type}">
		<input type="hidden" name="size" value="${cri.size}">
	  <input type="hidden" id="hiddenPage" name="page" value="${pageMaker.current}">
	</form>
</section>

<%@include file="../../includes/footer.jsp"%>
<script>
$(document).ready(function(){
	var $hiddenForm = $('#hiddenForm');
	//page 클릭 이벤트
	$('.pagination').on('click','li a',function(e){
		e.preventDefault();
		$('#hiddenPage').val($(this).attr('href'));
		$hiddenForm.submit();
		
	});
	
	//등록버튼 클릭시 이벤트
	$('#regBtn').on('click',function(e){
		e.preventDefault();
		$hiddenForm.attr('action','/pds/data/register').submit();
	});
	
	
	
});
</script>
</body>
</html>