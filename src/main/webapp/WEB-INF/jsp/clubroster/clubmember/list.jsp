<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Club Members</h2>

<c:url value="/clubmember/add" var="addUrl" />
<a href="${ addUrl }" class="btn btn-default">Add</a>

<div id="error_div" class="alert alert-error" style="display: none;">
    <%-- div for showing errors, see messager.js.showMessage --%>
</div>

<table id="clubmemberTable" class="table table-bordered table-striped table-hover">
    <%-- table filled by setDataTable call below --%>
</table>

<c:url value="/clubmember/datatable" var="datatableUrl">
    <c:param name="display" value="list" />
</c:url>
<script type="text/javascript">
    var columns = [];
    columns.push({ "data": "urls", "name": "urls", "title":"", "class":"", "sortable":false, "searchable": false });
    columns.push({ "data": "username", "name": "username", "title":"Username", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "firstName", "name": "firstName", "title":"First Name", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "lastName", "name": "lastName", "title":"Last Name", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "emailAddress", "name": "emailAddress", "title":"Email Address", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "password", "name": "password", "title":"Password", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "memberCode", "name": "memberCode", "title":"Member Code", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "memberSince", "name": "memberSince", "title":"Member Since", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "isGuest", "name": "isGuest", "title":"Is Guest", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "memberGears", "name": "memberGears", "title":"Member Gears", "class":"", "sortable":false, "searchable": false });
    var table = setDataTable({
        id : 'clubmemberTable',
        url : '${ datatableUrl }',
        columns : columns,
        individualSearching : true 
    });
</script>