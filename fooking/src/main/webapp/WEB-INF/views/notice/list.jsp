<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<section id="pricing" >
	<div id="blog" class="container">

		<div class="row">
			<div class="col-md-12" style="height:50px">
				<div class="section-title">
					<h1>Notice</h1>
					<span class="st-border"></span>
				</div>
			</div>

			<div class="col-sm-12" >
				<div class="st-pricing">
					<div class="st-border"></div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th><h6 align="center">번호</h6></th>
								<th><h6 align="center">제목</h6></th>
								<th><h6 align="center">작성자</h6></th>
								<th><h6 align="center">작성일</h6></th>
								<th><h6 align="center">수정일</h6></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}">
								<tr>
									<th><h6 align="center">${list.nno}</h6></th>
									<th><h6 align="center"><a class="sview" href="${list.nno}">${list.ntitle}</a></h6></th>
									<th><h6 align="center">${list.nwriter}</h6></th>
									<th><h6 align="center">${list.regdate}</h6></th>
									<th><h6 align="center">${list.updatedate}</h6></th>

								</tr>
							</c:forEach>
						</tbody>

					</table>
					<div>
						<div class="pull-right">
							<a href="/pds/write" class="btn btn-send" style="margin-top: 0px">글작성</a>
						</div>
						<div class="blog-search" style="width: 22%">

							<form>
								<input type="text" name="search"> <span
									class="pull-left">
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
</section>

<!-- <div class="col-sm-12">
				<div class="st-pricing text-center">
					<h5>Basic</h5>
					<h3>$39</h3>
					<div class="st-border"></div>
					<ul>
						<li>Free Download</li>
						<li>1000+ Softwear</li>
						<li>Full Access</li>
						<li>Free Update</li>
						<li>Live Support</li>
					</ul>
					<a href="" class="btn btn-send">Sign Up</a>
				</div> -->
<%@include file="../includes/footer.jsp"%>

</body>
</html>