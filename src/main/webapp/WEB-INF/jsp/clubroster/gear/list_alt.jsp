<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Gear List</h2>

<a href="add" class="btn btn-default">Add</a>

<div id="error_div" class="alert alert-error" style="display: none;">
    <%-- div for showing errors, see messager.js.showMessage --%>
</div>

<table class="table table-bordered table-striped table-hover table-datatable">
    <thead>
        <tr>
            <th>Gear Id</th>
            <th>Gear Type</th>
            <th>Model Name</th>
            <th>Make Name</th>
            <th>Description</th>
            <th>Member Gears</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${ gearList }" var="gear"  varStatus="status">
            <tr>
                <td><a href="edit?gearId=${gear.gearId}">${gear.gearId}</a></td>
                <td>${gear.gearType}</td>
                <td>${gear.modelName}</td>
                <td>${gear.makeName}</td>
                <td>${gear.description}</td>
                <td>memberGears</td>
                <td>
                    <a href="edit?gearId=${gear.gearId}">edit</a> 
                    <a href="show?gearId=${gear.gearId}">view</a>
                    <a href="delete?gearId=${gear.gearId}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>