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
	margin-right: 70%;
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
	min-height: 450px;
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
				<div id="paging"></div>
			</div>
		</div>
	</div>
</section>