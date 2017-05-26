<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section id="pricing" >
	<div id="blog" class="container">
		<div class="row">
		
			<div class="col-sm-12" >
				<div class="st-pricing">
				
						<div class="section-title">
							<h1>Q&A</h1>
							<span class="st-border"></span>
						</div>
					<div class="st-border"></div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th><h6 align="center">번호</h6></th>
								<th><h6 align="center">제목</h6></th>
								<th><h6 align="center">작성자</h6></th>
								<th><h6 align="center">작성일</h6></th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${list }" var="list">
							<tr data-qno="${list.qno }">
								<td><h6 align="center">${list.qno }</h6></td>
								<td><h6 align="left">${list.qtitle }&nbsp;
								<span class="glyphicon glyphicon-paperclip" style="color: #00B4DB;"></span>
								</h6></td>
								<td><h6 align="center">${list.qwriter }</h6></td>
								<td><h6 align="center">17-05-20</h6></td>
							</tr>
						</c:forEach>	
						</tbody>
					</table>
					<div>
						<div class="pull-right">
							<a href="/qna/register" class="btn btn-send" style="margin-top: 0px">글작성</a>
						</div>
						<div class="blog-search" style="width:80%;">
							<form id='hiddenPage' action="/qna/list" method="get">
								<input type='hidden' id='hqno' name=qno>
								<input type='hidden' id='hpage' name=page value="${cri.page }">
								<input type='hidden' id='hsize' name=size value="${cri.size }">
								
								<select name='type' style="width:10%; float:left;">
					            		<option value='x' ${cri.type eq 'x' ? "selected":"" }>-----</option>
					            		<option value='keytitle' ${cri.type eq 'keytitle' ? "selected":"" }>제목</option>
					            		<option value='keyqwriter' ${cri.type eq 'keyqwriter' ? "selected":"" }>작성자</option>
					            </select>
								<input type="text" name="keyword" style="width:20%;" value="${cri.keyword }"> <span class="pull-left">
									<button id="search_btn" class="search-submit" type="submit">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</form>
						</div>
					</div>

				</div>
				<ul class="pagination">
					<c:if test="${pageMaker.prev }">
					<li><a href="${pageMaker.start -1 }">&laquo;</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.start }" end="${pageMaker.end }" var="idx">
					<li class='${idx == pageMaker.current?"active":"" }'><a href="${idx }">${idx }</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next }">
					<li><a href="${pageMaker.end +1 }">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</section>

<%@include file="../includes/footer.jsp"%>

<script>
	$(document).ready(function(event){
		
		var $hiddenPage = $("#hiddenPage");
		var $hpage = $("#hpage");
		
		$(".pagination li a").on("click", function(e){
			e.preventDefault();
			$hpage.val($(this).attr("href"));
			$hiddenPage.submit();
		});
		
		$("#serch_btn").on("click", function(e){
			e.preventDefault();
			$hpage.val("1");
			$hiddenPage.submit();
		});
		
		$(".table tbody td").on("click", function(e){
			$("#hqno").val($(this).parent().attr("data-qno"));
			$hiddenPage.attr("action","/qna/view").submit();
		});
		
	});
	
</script>

</body>
</html>