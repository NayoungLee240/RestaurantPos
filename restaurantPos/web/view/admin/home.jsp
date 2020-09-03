<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

h1{
	margin-top: 50px;
	text-align: left;
}
#tables{
	height: 400px;
	border: 1px solid gray;
	overflow: auto;
}
#menu{
	margin-top: 10px;
}
#menu>a{
	display: inline-block;
	margin:5px;
	padding: 0 20px;
}
#wait-order{
	height: 474px;
	overflow: auto;
}
/*--------order list table start----------*/
#list-bable{
	border-collapse: collapse;
}
#list-table td{
	text-align: center;
	color: black;
	border: 1px solid gray;
}

#list-table>tbody>tr:hover {
	background: #d3cb98;
	font-weight: bold;
}

/*--------order list table end----------*/

</style>

<section class="pb_cover_v1 text-center" style="background-color: #fff5b9" id="section-table-order">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-md-9">
				<h1>Table</h1>
				<div id="tables"></div>
				<div id="menu" class="row align-items-center justify-content-center">
					<a class="custombtn" href="sales.mc">매출 관리</a>
					<a class="custombtn" href="menu.mc">메뉴 관리</a>
					<a class="custombtn" href="table.mc">테이블 관리</a>
					<a class="custombtn" href="bull.mc">게시판 관리</a>
				</div>
			</div>
			<div class="col-md-3" style="padding-left:0">
				<h1>주문 목록</h1>
				
				<div id="wait-order" class="row">
					<table id="list-table" class="col-md-12">
						<thead>
							<tr>
								<td>테이블<br>번호</td>
								<td>메뉴 이름</td>
								<td>개수</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>0</td>
								<td>샘플</td>
								<td>1</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>