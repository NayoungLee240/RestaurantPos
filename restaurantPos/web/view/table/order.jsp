<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>

<style>

/*------whole div Start------ */

#right-div,#left-div{
	padding-top:50px;
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
	height: 450px;
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
	height: 375px;
	overflow: auto;
}
#right-div>h1{
	margin-top:5px;
	margin-bottom:5px;
}
#right-div>#orderbtn{
	display:block;
}

/*------right div end------ */

</style>
<section class="pb_cover_v1 text-center" style="background-color: #fff5b9" id="section-table-order">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-sm-8" id="left-div">
				<h1>�ֹ��ϱ�</h1>
				<div id="order">
					<div id="cate" class="row">
						<a class="col-sm-3" type="button" id="cate-food" href="#">�Ļ�</a>
						<a class="col-sm-3" type="button" id="cate-fruit" href="#">����</a>
						<a class="col-sm-3" type="button" id="cate-anju" href="#">����</a>
						<a class="col-sm-3" type="button" id="cate-drink" href="#">����</a>
					</div>
					<div id="menu">			
					</div>
				</div>
			</div>
			<div class="col-sm-4" id="right-div">
				<h1>�ֹ� ���</h1>
				<div id="order-list"></div>
				<h1>Total : <span>0</span> ��</h1>
				<a type="button" id="orderbtn" href="tablereceipt.mc" class="custombtn">�ֹ��ϱ�</a>
			</div>
		</div>
	</div>
</section>