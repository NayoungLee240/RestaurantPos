<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style>
.tablehomebtn{
	font-size: 35px;
	background-color: #e9856e;
	text-decoration:none;
	display: block;
	color: #fff5b9;
}
.tablehomebtn:hover{
	background-color: #bc6754;
	color: #d3cb98;
}
#section-table-home{
	padding-top: 100px;
	height: 770px;
}
#section-table-home>div{
	display:block;
	margin:0 auto;
}
.row{
	text-align: center;
}
#callbtn{
	display:block;
	margin:70px;
	background-color: #e9856e;
	padding:10px;
}
#callbtn:hover{
	background-color: #bc6754;
}
#callbtn>img{
	width: 80px;
}
#orderdiv{
	display: block;
	background: white;
	border: 2px solid gray;
	height: 500px;
	overflow: auto;
}
#orderlist{
	display:block;
}
#orderdiv>h3{
	padding: 5px;
}

#search{
	display: block;
	margin-top:100px;
}
h2{
	font-size: 22px;
	margin:0 3px;
}
#srch_r{
	margin-top: 10px;
	display: block;
	background: white;
	height: 100px;
	border: 2px solid gray;
	overflow: auto;
}
</style>
<section style="background-color: #fff5b9" id="section-table-home">
	<div class="container">
		<div class="row">
			<div class="col-sm" style="padding-top: 300px">
				<a href="#" rol="button" id="callbtn"><img src="img/bell.png"></a>
			</div>
			<div class="col-sm" style="padding-top: 100px">
				<p><a href="#" role="button" class="tablehomebtn" id="orderbtn">주문하기</a></p>
				<p><a href="#" role="button" class="tablehomebtn" id="bullbtn">낙서하기</a></p>
				<div id="search">
					<h2 class="row"><input class="col-9" id="srch_i" type="text" name="srch"><button class="col-3" id="srch_b">검색</button></h2>
					<div id="srch_r"></div>
				</div>
			</div>
			<div class="col-sm">
				<div id="orderdiv">
					<h3>대기중 주문</h3>
					<div id="orderlist">
					</div>
				</div>
			</div>
			
		</div> 
	 <!-- <div class="row align-items-center justify-content-center">
			<div class="col-md-9  order-md-1">
			    <p><a href="#section-contact" role="button" class="tablehomebtn">주문하기</a></p>
				<p><a href="#section-contact" role="button" class="tablehomebtn">낙서하기</a></p>
          	</div>  
        </div>  -->
	</div>
</section>