<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Member Gear List</h2>
<jsp:include page="/WEB-INF/jsp/angular-grid-rest-api.jsp" >
	<jsp:param name="restApiUrl" value="/rest"/>
	<jsp:param name="resourceName" value="membergear"/>
	<jsp:param name="resourceId" value="memberGearId"/>
</jsp:include>