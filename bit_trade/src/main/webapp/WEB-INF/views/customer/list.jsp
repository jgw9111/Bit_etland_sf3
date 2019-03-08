<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<link rel="stylesheet" href="${css}/customer/list.css" />
<div class="grid-item" id="nav">
	<jsp:include page="../employee/nav.jsp"/>
</div>
<div class="grid-item" id="side_menu">
 	<h1><font style="font-size: 30px">고객 목록</font>
 	</h1>
</div>
<div class="grid-item" id="content">
	<table id="cust_tab">
	  <tr>
	    <th>No.</th>
	    <th>I   D</th>
	    <th>이	름</th>
	    <th>생년월일</th>
	    <th>성	별</th>
	    <th>전화번호</th>
	    <th>우편번호</th>
	    <th>주	소</th>
	    <th>상세주소</th>
	  </tr>
	<c:forEach items="${list}" var="cust" >
	  <tr>
	    <td>${cust.rnum}</td>
	    <td>${cust.customerID}</td>
	    <td><a href="${ctx}/customer.do?cmd=cust_retrieve&page=detail&customerID=${cust.customerID}">${cust.customerName}</a></td>
	    <td>${cust.ssn}</td>
	    <td>여</td>
	    <td>${cust.phone}</td>
	    <td>${cust.city}</td>
	    <td>${cust.address}</td>
	    <td>${cust.postalCode}</td>
	  </tr>
	</c:forEach>
	</table>
<div style="height: 50px"></div>    
	<div class="center">
	  <div class="pagenation">
	  <c:if test="${pagenation.existPrev}">
		  <a href="${ctx}/customer.do?cmd=cust_list&page=list&page_num=${pagenation.prevBlock}">&laquo;</a>
	  </c:if>
	  <c:forEach begin="${pagenation.startPage}" end="${pagenation.endPage}" varStatus="status" >
		  <c:choose>
		  	<c:when test="${pagenation.pageNum eq status.index}">
			  <a href="#" class ="page active">${status.index}</a>
		  	</c:when>
            <c:otherwise>
			  <a href="#" class ="page">${status.index}</a>
            </c:otherwise>
		  </c:choose>
	  </c:forEach>
	  <c:if test="${pagenation.existNext}">
		  <a href="${ctx}/customer.do?cmd=cust_list&page=list&page_num=${pagenation.nextBlock}">&raquo;</a>
	  </c:if>
	  </div>
	</div>
</div>

<script>
	$('.page').click(function(){
		location.assign('${ctx}/customer.do?cmd=cust_list&page=list&page_num='+$(this).text());
		});
		// pageNum, pageSize, c
		// ?cmd=list&page=list&page_num=2&page_size=5

</script>