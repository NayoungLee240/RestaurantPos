<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
	height: 450px;
	
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
				<div id="bull-list"></div>
				<div id="paging"></div>
			</div>
		</div>
	</div>
</section>