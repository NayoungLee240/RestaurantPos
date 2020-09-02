<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style>

/*------whole div Start------ */
#section-table-order{
	padding-top: 100px;
	height: 770px;
}
#section-table-order>div{
	display:block;
	margin:0 auto;
}
.row{
	text-align: center;
}
/*------whole div end------ */

/*------left div Start------ */
#left-div>h1{
	text-align: left;
}
#order> div{
	margin: 0 auto;
	text-align: left;
}
#order>#cate{
	height: 47px;
	padding:0;
}
#order>#menu{
	background: white;
	border: 2px solid gray;
	height: 500px;
	overflow: auto;
}
/*------left div end------ */

/*------left div category Start------ */
#cate>a{
	padding: 0;
	font-size: 25px;
	color: black;
	margin: 0;
	display:inline-block;
	text-align: center;
	background: white;
	border: 1px solid gray;
}
/*------left div category end------ */

/*------right div Start------ */
#right-div>div{
	border: 1px solid gray;
	height: 500px;
	overflow: auto;
}

/*------right div end------ */

/*------left div Start------ */
#order-list>button{
	background: #e9856e;
	padding:5px;
}
/*------left div end------ */
</style>
<section style="background-color: #fff5b9" id="section-table-order">
	<div class="container">
		<div class="row">
			<div class="col-8" id="left-div">
				<h1>�ֹ��ϱ�</h1>
				<div id="order">
					<div id="cate" class="row">
						<a class="col-3" type="button" id="cate-food" href="#">�Ļ�</a>
						<a class="col-3" type="button" id="cate-fruit" href="#">����</a>
						<a class="col-3" type="button" id="cate-anju" href="#">����</a>
						<a class="col-3" type="button" id="cate-drink" href="#">����</a>
					</div>
					<div id="menu">			
					</div>
				</div>
			</div>
			<div class="col-4" id="right-div">
				<h1>�ֹ� ���</h1>
				<div id="order-list"></div>
				<h1>Total <span>0</span> ��</h1>
			</div>
			<div class="col-4" id="right-div"></div>
		</div>
	</div>
</section>