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
							<tr>
								<td><h6 align="center">${list.qno }</h6></td>
								<td><h6 align="center">${list.qtitle }&nbsp;
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
						<div class="blog-search" style="width: 30%">
							<form id='hiddenPage' action="/qna/list" method="get">
								<input type='hidden' id='hpage' name=page value="${cri.page }">
								<input type='hidden' id='hsize' name=size value="${cri.size }">
								
								<select name='type'>
					            		<option value='x' ${cri.type eq 'x' ? "selected":"" }>-----</option>
					            		<option value='keytitle' ${cri.type eq 'n' ? "selected":"" }>제목 찾기</option>
					            		<option value='keyqwriter' ${cri.type eq 'c' ? "selected":"" }>작성자 찾기</option>
					            </select>
								<input type="text" name="keyword"> <span class="pull-left">
									<button id="submit_btn" class="search-submit" type="submit">
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
			var $this = $(this);
			$hpage.val($this.attr("href"));
			$hiddenPage.submit();
		});
		
	});
	
</script>

</body>
</html>