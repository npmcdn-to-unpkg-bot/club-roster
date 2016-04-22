<%@ include file="/WEB-INF/include.jsp"%>

<ul id="mainmenu" class="list-unstyled">
	
	<sec:authorize access="!isAuthenticated()">
		<li><a href="<c:url value="/login" />">Login</a></li>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
	</sec:authorize>
	
</ul>