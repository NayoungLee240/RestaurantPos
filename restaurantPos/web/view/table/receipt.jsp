<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<style>
/*------home btn Start------ */
#homebtn{
	margin-top: 10px;
	display:inline-block;
	text-align: center;
	margin-left: 50%;
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
<script>

	/* RECEIPT 데이터 화면에 출력 */
function display(datas){
	var obj = JSON.parse(datas);
	$(obj).each(function(index,menu){
		var result = '';
		result += '<h3> 테이블 번호 = '+menu.tab_id+' </h3>';
		result += '<h3> 결제금액 = '+menu.total+' </h3>';
		result += '<h3> 결제날짜= '+menu.regdate+' </h3>';
		
		$('#receiptlist').append(result);
 });
};

	/* RECEIPT 데이터 가지고와서 display에 전송 */
$(document).ready(function(){
	$.ajax({
		url:'receiptlists.mc',
		async:false,
		dataType:"text",
		success:function(result){
			display(result);
		},
		error: function(jqXHR, textStatus, errorThrown){
			alert(errorThrown);
			alert(textStatus);
		}
	});
});

</script>
<section class="pb_cover_v1 text-center" style="background-color: #fff5b9" id="section-table-receipt">
	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-sm-6" style="margin-top:50px">
				<h1>영수증</h1>
            	<div id="receiptlist"></div>
            	<p><a class="col-sm-6 custombtn" type="button" id="homebtn" href="tablehome.mc">돌아가기</a></p>
          	</div>  
        </div>
	</div>
</section>