<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <jsp:include page="main-menu.jsp"/> --%>
<div class="grid-item" id="side_bar">
	<div class= "myphoto">
	<div class= "myphotoin">
	<form id="file_form" >
		<img src="${img}${image.imgName}.${image.imgExtention}" style="height: 200px  ">
		<input type="file" name="file_upload"/>
		<input type="submit" id="file_upload_btn"/>
	</form>
	</div>
	</div>
	<div>
		<span class="label label-info" id="photo_btn">사진수정</span>
	</div>
</div>
<div class="grid-item" id= "content">
<div id="mypage_table">
  <table class="table table-bordered">
    <thead>
      <tr>
             <td>I   D</td>
             <td>${cust.customerID}</td>
           </tr>
           <tr>
             <td>이  름 </td>
             <td>${cust.customerName}</td>
           </tr>
           <tr>
             <td>생년월일 </td>
             <td>${cust.ssn}</td>
           </tr>
           <tr>
             <td>성  별</td>
             <td>여</td>
           </tr>
           <tr>
             <td>전화번호</td>
             <td>${cust.phone}</td>
           </tr>
           <tr>
             <td>지번주소</td>
             <td>${cust.city}</td>
           </tr>
           <tr>
             <td>상세주소</td>
             <td>${cust.address}</td>
           </tr>
           <tr>
             <td>우편번호</td>
             <td>${cust.postalCode}</td>
           </tr>     
    </thead>	
  </table>
</div>
<div class="grid-item">
	<span class="label label-info" id="update_btn">수정</span>
	<span class="label label-danger" id="withdrawal">회원 탈퇴</span>
</div>
</div>

<script>
$('#update_btn').attr('style','cursor:pointer').click(function(){
	location.assign('${ctx}/move/customer/update');
	/* $('#update_btn')
	.attr('method','POST')
	.attr('action','${ctx}/move/customer/update')
	.submit(); */
	/* location.assign('${ctx}/customer.do?cmd=cust_retrieve&page=update&customerID=${cust.customerID}'); */
});
$('#file_upload_btn').attr('style','cursor:pointer').click(function(){
	$('#file_form')
	.attr('method','post')
	.attr('action','${ctx}/customer.do?cmd=cust_file_upload&page=detail&customerID=${cust.customerID}')
	.attr('enctype','multipart/form-data') 
	.submit(); 
});
$('#withdrawal').attr('style','cursor:pointer').click(function(){
	alert('탈퇴');
	location.assign('${ctx}/customer.do?cmd=cust_delete&dir=home&page=main&customerID=${cust.customerID}');
});
</script>