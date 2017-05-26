<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>


<section id="blog">
	<div class="container">
		<div class="row">
			<div class="row col-md-12 st-pricing">
				<div class="col-md-12">
					<div class="section-title">
						<h1>ImageBoard</h1>
						<span class="st-border"></span>
					</div>
				</div>
				<div class="portfolio-wrapper">
					<div class="col-md-12">
						<!--/#portfolio-filter-->
					</div>

					<div class="portfolio-items isotope"
						style="position: relative; height: 600px; overflow: hidden;">
						<c:forEach items="${list}" var="list">
							<div
								class="col-md-4 col-sm-6 work-grid wordpress graphic isotope-item"
								style="position: absolute; left: 0px; top: 0px; transform: translate3d(0px, 0px, 0px);">

								<div
									class="flex_column av_one_third flex_column_div av-zero-column-padding column-top-margin first"
									style="border-radius: 0px; margin-right: 30px; border: solid gray 0.5px; margin-bottom: 30px; box-shadow: 10px 10px 5px #888888;">

									<article class="restaurant-list-wrap">
										<div class="restaurant-list-item avia_transform noHover-icon">
											<a href="https://guide.michelin.co.kr/ko/restaurant/gaon/"
												class="restaurant-list-pic-wrap"> 
												<img width="100%"
												height="200px" src="/up/display?fileName=${list.imagename}"
												class="attachment-restaurant-smaill size-restaurant-smaill wp-post-image"
												alt="none">
											</a>
											<div class="restaurant-list-content">
												<div class="restaurant-list-header"
													style="margin-left: 20px;">
													<div style="text-align: center; margin-top: 5px;">
														<span class="restaurant-list-category">${list.ino}</span>
													</div>
													<h3 class="restaurant-list-title ellipsis">
														<a href="https://guide.michelin.co.kr/ko/restaurant/gaon/"><h3>${list.ititle}</h3></a>
													</h3>
													<span class="restaurant-list-michelin color-red ellipsis"
														style="color: red; font-size: 20px;">
														<h4>${list.iwriter}</h4> <i
														class="icon-annuels icon-red icon-star3"></i>
													</span>
												</div>
												<div class="restaurant-list-info" style="margin-left: 20px;">
													<p class="ellipsis">
														<i class="icon-mr icon-emplacementPoi02"></i>
														<h6>${list.icontent}</h6>
													</p>
													<p class="ellipsis">
														<i class="icon-annuels icon-tel"></i><h5>${list.updatedate}</h5>
													</p>
													<p class="ellipsis">
														<i class="icon-mr icon-maison"></i><h5>조회수 :
															${list.viewcount}</h5>
													</p>
												</div>
											</div>
										</div>
									</article>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row">
						<form class="contact-form" name="contact-form" id="f2"
							action="/imageboard/list">
							<input type="hidden" id="hpage" name="page" value="${cri.page}">
							<div class="col-sm-4">
								<div class="col-sm-4">
									<select name="type" class="form-control input-sm">
										<option value="x" ${cri.type eq 'x' ? "selected":""}>----</option>
										<option value="t" ${cri.type eq 't' ? "selected":""}>제목</option>
										<option value="c" ${cri.type eq 'c' ? "selected":""}>내용</option>
										<option value="w" ${cri.type eq 'w' ? "selected":""}>작성자</option>
									</select>
								</div>
								<div class="col-sm-6">
									<input type="text" id="key" class="form-control" name="keyword"
										value="${cri.keyword}">
								</div>
								<div class="col-sm-2">
									<button id="btnSearch" class="btn btn-send">검색</button>
								</div>
							</div>
						</form>
						<div style="text-align: right;">

							<button id="btnReg" class="btn btn-send">등록하기</button>
						</div>
						<div>
							<ul class="pagination">
								<c:if test="${pageMaker.prev }">
									<li><a href="${pageMaker.start -1 }"> << </a></li>
								</c:if>

								<c:forEach begin="${pageMaker.start }" end="${pageMaker.end }"
									var="idx">
									<li class='${idx == pageMaker.current?"active":"" }'><a
										href="${idx}">${idx}</a></li>
								</c:forEach>

								<c:if test="${pageMaker.next }">
									<li><a href="${pageMaker.end +1 }"> >> </a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>

<form class="contact-form" name="contact-form" id="f1" action="/imageboard/list">
	<input type="hidden" id="hpage1" name="page" value="${cri.page}">
</form>

	<%@include file="../includes/footer.jsp"%>
	<script>
		$(document).ready(function() {

			$(".pagination li a").on("click", function(e) {
				e.preventDefault();
				$("#hpage1").val($(this).attr("href"));
				$("#f1").submit();
			});

			$("#btnReg").on("click", function(e) {
				e.preventDefault();
				$("#f2").attr("action", "/imageboard/register").submit();

			});

		});
	</script>
	</body>
	</html>