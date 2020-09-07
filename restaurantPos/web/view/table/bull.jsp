<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<style>
/*--------basic div start----------*/
#center>h1, #center>a{
	display: inline-block;
}
#center{
	margin-top: 50px;
	text-align: justify;
}
#center>h1{
	margin-right: 75%;
}
#center>a{
	margin-left:10px;
	padding: 0 20px;
}

/*--------basic div end----------*/
/*--------bull list div start----------*/
#bull-list{
	margin-top: 10px;
	background: white;
	border: 1px solid gray;
	min-height: 400px;
}
#bull-list>a{
	display: block;
	padding:5px 15px;
	margin-bottom:5px;
	background: #bffbdc;
	text-decoration: none;
}
#bull-list>a:hover{
	background: #8acba9;
	color: black;
}
#bull-list>a>h3{
	text-align: left;
	margin:0;
	margin-top: 5px;
}
#bull-list>a>p{
	text-align: right;
	margin:0;
}

/*--------bull list div end----------*/

/*--------paging div start----------*/
#paging{
	margin-top:15px;
	min-height: 30px;
}
/*--------paging div end----------*/
</style>
<script>
//이전 버튼 이벤트

function fn_prev(page, range, rangeSize) {

		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "gettablebullList.mc";
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;

	}

  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {

		var url = "gettablebullList.mc";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;	
	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {

		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "gettablebullList.mc";

		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;
	}

</script>
<section class="pb_cover_v1 text-center" style="background-color: #fff5b9" id="section-table-order">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-sm-11" id="center">
				<h1>낙서장</h1>
				<a href="addbull.mc" class="custombtn">낙서 쓰기</a>
				<div id="bull-list">
					<c:forEach var="b" items="${bulllist }">
						<fmt:formatDate var="dateTmp" pattern="yyyy/MM/dd HH:mm:ss" value="${b.regdate }"/>
						<a href="viewbull.mc?id=${b.id }"><h3>${b.title }</h3><p>작성자 ${b.author }  | ${dateTmp }</p>
						</a>
					</c:forEach>

				</div>
				<div id="paging" style="text-align: center">
					<ul class="pagination">
						<c:if test="${pagination.prev }">
							<li class="page-item"><a class="page-link" href="#" onClick="fn-prev('${pagination.page}','${pagination.range }', '${pagination.rangeSize }')">◀</a></li>
						</c:if>
						<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
							<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/>">
								<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">${idx }</a></li>
						</c:forEach>
						<c:if test="${pagination.next }">
							<li class="page-item"><a class="page-link" href="#" onClick="fn-next('${pagination.range}','${pagination.range }', '${pagination.rangeSize }')">▶</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>