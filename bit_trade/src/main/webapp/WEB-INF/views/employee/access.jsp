<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${css}/employee/access.css" />
<div class="grid-item" id="side_menu">
	<h1><font style="font-size: 30px">사원 접속</font></h1>
</div>
<div class="grid-item" id="content">
<form id="form" name="form" >
	<div class="grid-container">
	    <div class="grid-item" id="item_1">사원번호</div>
	    <div class="grid-item" id="item_2"><input type="text" id="empno" name="empno" value="1080"></div>
	    <div class="grid-item" id="item_3">이 름</div>
	    <div class="grid-item" id="item_4"><input type="text" id="name" name="name" value="정지우"></div>
	    <div class="grid-item" id="item_11"><input type="submit" id="confirm_btn" value='확 인'></div>
	    <div class="grid-item" id="item_12"><input type="reset" id="cancel_btn" value='취 소'> </div>
	    <input type="hidden" name="cmd" value="access" />
	    <input type="hidden" name="page" value="list" />
	    <input type="hidden" name="dir" value="customer" />
	</div>
</form>
</div>
<script>
$('#confirm_btn').click(()=>{
	var empno = $('#empno').val();
	var name = $('#name').val();
	$('#form')
	.attr('action', '${ctx}/employee.do')
	.submit();
});
</script>