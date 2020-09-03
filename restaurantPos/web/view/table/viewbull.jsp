<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
#center{
	background: #bffbdc;
	padding-top: 10px;
	border: 1px solid gray;
}
#center>h1, #center>h2{
	text-align: left;
}
#center>h2{
	border: 1px solid gray;
	padding: 10px;
}
#center>p, #center>h3{
	text-align: right;
}
</style>
<section class="pb_cover_v1 text-center" style="background-color: #fff5b9" id="section-table-order">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-sm-11" id="center">
				<h1>${data.title }</h1>
				<h2>${data.content }</h2>
				<h3>작성자 ${data.author }</h3>
				<p><fmt:formatDate var="dateTmp" pattern="yyyy/MM/dd HH:mm:ss" value="${data.regdate }"/>
					${dateTmp }
				</p>
				
				<!-- 답글 -->
			</div>
		</div>
	</div>
</section>