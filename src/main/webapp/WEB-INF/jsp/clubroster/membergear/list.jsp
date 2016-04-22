<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Member Gears</h2>

<c:url value="/membergear/add" var="addUrl" />
<a href="${ addUrl }" class="btn btn-default">Add</a>

<div id="error_div" class="alert alert-error" style="display: none;">
    <%-- div for showing errors, see messager.js.showMessage --%>
</div>

<table id="membergearTable" class="table table-bordered table-striped table-hover">
    <%-- table filled by setDataTable call below --%>
</table>

<c:url value="/membergear/datatable" var="datatableUrl">
    <c:param name="display" value="list" />
</c:url>
<script type="text/javascript">
    var columns = [];
    columns.push({ "data": "urls", "name": "urls", "title":"", "class":"", "sortable":false, "searchable": false });
    columns.push({ "data": "gear", "name": "gear", "title":"Gear", "class":"", "sortable":false, "searchable": false });
    columns.push({ "data": "clubMember", "name": "clubMember", "title":"Club Member", "class":"", "sortable":false, "searchable": false });
    var table = setDataTable({
        id : 'membergearTable',
        url : '${ datatableUrl }',
        columns : columns,
        individualSearching : true 
    });
</script>