<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<div class="container-fluid" style= "background-image: url('/resources/new-food-truck-2.jpg');" type="image/jpg" >
	<hr>
	<div class="row-fluid">
		<div id='every' class="col-md-6 col-sm-12 col-xs-12">

			<div class="widget-box">
				<div class="widget-title">
					<span class="icon">

						
							<span><input type="checkbox" id="title-checkbox"
								name="title-checkbox" style="opacity: 0;"></span>
						
					</span> <br> <br> <br>

					<h5>공지사항</h5>
				</div>
				<div class="widget-content nopadding">
					<table class="table table-bordered table-striped with-check">

						<thead>
							<tr>
								<br>
								<th style="text-align: center;">번호</th>
								<th style="text-align: center;">제목</th>
								<th style="text-align: center;">글쓴이</th>
								<th style="text-align: center;">등록날짜</th>

							</tr>
						</thead>

						<tbody>
							<c:forEach var="list" items="${list}">
								<tr>
									<td>${list.nno}</td>
									<td><a class="sview" href="${list.nno}">${list.ntitle}</a></td>
									<td>${list.nwriter}</td>
									<td>${list.regdate}</td>

								</tr>
							</c:forEach>
						</tbody>

					</table>
					<ul class="pagination pagination-sm no-margin pull-right">
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

<style>
#every {
	margin-left: 10cm
}
}
</style>
<%@include file="../includes/footer.jsp"%>

<script>
	$(document).ready(function() {
		console.log($("#menu"));
		/* $("#menu").on("click",'li a',function(e){
			e.preventDefault();
			
		}); */

	});
</script>

</body>
</html>