<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Club Members</h2>

<jsp:include page="/WEB-INF/jsp/angular-grid-rest-api.jsp" >
	<jsp:param name="restApiUrl" value="/rest"/>
	<jsp:param name="resourceName" value="clubmember"/>
	<jsp:param name="resourceId" value="memberId"/>
</jsp:include>