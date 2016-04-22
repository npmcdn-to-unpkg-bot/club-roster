<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Gear</h2>

<h2> ${gear.gearId} </h2>

<table class="table table-bordered table-hover">
    <tr>
        <th>Gear Id</th>
        <td>
            ${gear.gearId}
        </td>
    </tr>
    <tr>
        <th>Gear Type</th>
        <td>
            ${gear.gearType}
        </td>
    </tr>
    <tr>
        <th>Model Name</th>
        <td>
            ${gear.modelName}
        </td>
    </tr>
    <tr>
        <th>Make Name</th>
        <td>
            ${gear.makeName}
        </td>
    </tr>
    <tr>
        <th>Description</th>
        <td>
            ${gear.description}
        </td>
    </tr>
    <tr>
        <th>Member Gears</th>
        <td>
            <ul>
                <c:forEach items="${gear.memberGears}" var="item" varStatus="itemStatus" >
                    <li><a href="../membergear/edit?memberGearId=${item.memberGearId}" > ${item.memberGearId}</a></li>
                </c:forEach>
            </ul>
        </td>
    </tr>
</table>