<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
/*------center div Start------ */
#center{
	margin-bottom:15px;
}
#center>h1{
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
	height: 250px;
	overflow: auto;
}
/*------center div end------ */

/*------category Start------ */
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
/*------category end------ */
h3{
	text-align: left;
	margin-top: 15px;
}

/*------menu edit/add start------ */
table td{
	text-align: left;
	color: black;
	font-size: 25px;
	padding-left: 10px;
}
#edit, #add{
	outline: 0;
	border:0;
	height: 50px;
	padding-bottom: 20px;
}
/*------menu edit/add end------ */
</style>

<section class="pb_section" style="background-color: #fff5b9" id="section-table-order">
	<div class="container align-items-center justify-content-center"" style="overflow: auto">
		<div class="row">
			<div class="col-sm-12" id="center">
				<h1>메뉴</h1>
				<div id="order">
					<div id="cate" class="row">
						<a class="col-sm-3" type="button" id="cate-food" href="#">식사</a>
						<a class="col-sm-3" type="button" id="cate-fruit" href="#">과일</a>
						<a class="col-sm-3" type="button" id="cate-anju" href="#">안주</a>
						<a class="col-sm-3" type="button" id="cate-drink" href="#">음료</a>
					</div>
					<div id="menu">			
					</div>
				</div>
				<div>
					<h3>수정하기</h3>
					<form action="editmenu.mc" method="post">
						<table>
							<thead><tr>
								<td>ID</td><td>이름</td><td>카테고리</td><td>가격</td><td></td>
							</tr></thead>
							<tbody><tr>
								<td><input type="text" name="id" size=5></td>
								<td><input type="text" name="name" size=10></td>
								<td><select name="cate"><option>식사</option>
										<option>과일</option>
										<option>안주</option>
										<option>음료</option>
									</select></td>
								<td><input type="number" name="name" size=10 style="width: 150px"></td>
								<td><input type="submit" value="edit" class="custombtn" id="edit"></td>
							</tr></tbody>
						</table>
					</form>
					<h3>추가하기</h3>
					<form action="addmenu.mc" method="post">
						<table>
							<thead><tr>
								<td>ID</td><td>이름</td><td>카테고리</td><td>가격</td><td></td>
							</tr></thead>
							<tbody><tr>
								<td><input type="text" name="id" size=5></td>
								<td><input type="text" name="name" size=10></td>
								<td><select name="cate"><option>식사</option>
										<option>과일</option>
										<option>안주</option>
										<option>음료</option>
									</select></td>
								<td><input type="number" name="name" size=10 style="width: 150px;"></td>
								<td><input type="submit" value="add" class="custombtn" id="add"></td>
							</tr></tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>