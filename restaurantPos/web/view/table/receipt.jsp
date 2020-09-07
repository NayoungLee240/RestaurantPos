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

	/* RECEIPT ������ ȭ�鿡 ��� */
function display(datas){
	var obj = JSON.parse(datas);
	$(obj).each(function(index,menu){
		var result = '';
		result += '<h3> ���̺� ��ȣ = '+menu.tab_id+' </h3>';
		result += '<h3> �����ݾ� = '+menu.total+' </h3>';
		result += '<h3> ������¥= '+menu.regdate+' </h3>';
		
		$('#receiptlist').append(result);
 });
};

	/* RECEIPT ������ ������ͼ� display�� ���� */
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
				<h1>������</h1>
            	<div id="receiptlist"></div>
            	<p><a class="col-sm-6 custombtn" type="button" id="homebtn" href="tablehome.mc">���ư���</a></p>
          	</div>  
        </div>
	</div>
</section>