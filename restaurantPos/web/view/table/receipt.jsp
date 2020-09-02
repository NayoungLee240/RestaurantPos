<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style>
/*------home btn Start------ */
#homebtn{
	margin-top: 10px;
	display:inline-block;
	background: #e9856e;
	padding:5px;
	color:#fff5b9;
	font-size: 30px;
	text-align: center;
	margin-left: 50%;
}
#homebtn:hover{
	background-color: #bc6754;
	color: #d3cb98;
}
/*------home btn end------ */
#receiptlist{
	border:1px solid gray;
	background: white;
	min-height: 50px;
	max-height: 400px;
	overflow: auto;
}

</style>


<section class="pb_cover_v1 text-center" style="background-color: #fff5b9" id="section-table-receipt">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-sm-6" style="margin-top:50px">
				<h1>영수증</h1>
            	<div id="receiptlist"></div>
            	<p><a class="col-sm-6" type="button" id="homebtn" href="tablehome.mc">돌아가기</a></p>
          	</div>  
        </div>
	</div>
</section>