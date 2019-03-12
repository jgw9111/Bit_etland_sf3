<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!--
	@Author : 정지우 [jgw911191@gmail.com]
	@Date : 2019. 3. 12. 오전 9:53:15
	@File Name : intro.jsp
	@Desc : 인트로 템플릿 페이지, 로그인, 회원가입 화면
 -->
<jsp:include page="common.jsp"/>
<body>
	<div class="grid-item" id="header">
	          <tiles:insertAttribute name="top" />
	</div>
	<div>
	          <tiles:insertAttribute name="nav" />
	          <tiles:insertAttribute name="content" />
	</div>	
	<div class="grid-item" id="footer"> 
	          <tiles:insertAttribute name="bottom" />
</div>         
</body>
</html>