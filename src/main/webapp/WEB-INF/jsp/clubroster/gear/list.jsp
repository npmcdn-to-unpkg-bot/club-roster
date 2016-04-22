<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Gears</h2>

<c:url value="/gear/add" var="addUrl" />
<a href="${ addUrl }" class="btn btn-default">Add</a>

<div id="error_div" class="alert alert-error" style="display: none;">
    <%-- div for showing errors, see messager.js.showMessage --%>
</div>

<table id="gearTable" class="table table-bordered table-striped table-hover">
    <%-- table filled by setDataTable call below --%>
</table>

<c:url value="/gear/datatable" var="datatableUrl">
    <c:param name="display" value="list" />
</c:url>
<script type="text/javascript">
    var columns = [];
    columns.push({ "data": "urls", "name": "urls", "title":"", "class":"", "sortable":false, "searchable": false });
    columns.push({ "data": "gearType", "name": "gearType", "title":"Gear Type", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "modelName", "name": "modelName", "title":"Model Name", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "makeName", "name": "makeName", "title":"Make Name", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "description", "name": "description", "title":"Description", "class":"", "sortable":true, "searchable": true });
    columns.push({ "data": "memberGears", "name": "memberGears", "title":"Member Gears", "class":"", "sortable":false, "searchable": false });
    var table = setDataTable({
        id : 'gearTable',
        url : '${ datatableUrl }',
        columns : columns,
        individualSearching : true 
    });
</script>