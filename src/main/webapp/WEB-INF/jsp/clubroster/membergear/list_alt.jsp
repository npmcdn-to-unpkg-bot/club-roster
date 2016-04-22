<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Member Gear List</h2>

<a href="add" class="btn btn-default">Add</a>

<div id="error_div" class="alert alert-error" style="display: none;">
    <%-- div for showing errors, see messager.js.showMessage --%>
</div>

<table class="table table-bordered table-striped table-hover table-datatable">
    <thead>
        <tr>
            <th>Member Gear Id</th>
            <th>Gear</th>
            <th>Club Member</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${ memberGearList }" var="memberGear"  varStatus="status">
            <tr>
                <td><a href="edit?memberGearId=${memberGear.memberGearId}">${memberGear.memberGearId}</a></td>
                <td>${memberGear.gear.gearId}</td>
                <td>${memberGear.clubMember.memberId}</td>
                <td>
                    <a href="edit?memberGearId=${memberGear.memberGearId}">edit</a> 
                    <a href="show?memberGearId=${memberGear.memberGearId}">view</a>
                    <a href="delete?memberGearId=${memberGear.memberGearId}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>