<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>


<section id="pricing">
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
									style="border-radius: 0px; margin-right: 30px; border: solid gray 0.5px; margin-bottom: 30px;">

									<article class="restaurant-list-wrap">
										<div class="restaurant-list-item avia_transform noHover-icon">
											<a href="https://guide.michelin.co.kr/ko/restaurant/gaon/"
												class="restaurant-list-pic-wrap"> <img width="100%"
												height="200px" src="/up/display?fileName=${list.imagename}"
												class="attachment-restaurant-smaill size-restaurant-smaill wp-post-image"
												alt="img_4251">
											</a>
											<div class="restaurant-list-content">
												<div class="restaurant-list-header"
													style="margin-left: 10px;">
													<div style="text-align: center; margin-top: 5px;">
														<span class="restaurant-list-category">${list.ino}</span>
													</div>
													<h3 class="restaurant-list-title ellipsis">
														<a href="https://guide.michelin.co.kr/ko/restaurant/gaon/">${list.ititle}</a>
													</h3>
													<span class="restaurant-list-michelin color-red ellipsis"
														style="color: red; font-size: 20px;">
														${list.iwriter} <i
														class="icon-annuels icon-red icon-star3"></i>
													</span>
												</div>
												<div class="restaurant-list-info" style="margin-left: 10px;">
													<p class="ellipsis">
														<i class="icon-mr icon-emplacementPoi02"></i>
														${list.icontent}
													</p>
													<p class="ellipsis">
														<i class="icon-annuels icon-tel"></i> ${list.updatedate}
													</p>
													<p class="ellipsis">
														<i class="icon-mr icon-maison"></i> <a
															href="http://www.gaonkr.com" target="_blank"
															style="color: blue; font-size: 15px;">조회수 :
															${list.viewcount}</a>
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
						<div style="text-align: center;">
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
						<div style="text-align: right;">
							<a href="/imageboard/register" class="btn btn-send">등록하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
</section>

<form id="f1" action="/imageboard/list">
	<input type="hidden" id="hpage" name="page">
</form>

<%@include file="../includes/footer.jsp"%>
<script>
	$(document).ready(function() {

		$(".pagination li a").on("click", function(e) {
			e.preventDefault();
			$("#hpage").val($(this).attr("href"));
			$("#f1").submit();
		});

	});
</script>
</body>
</html>