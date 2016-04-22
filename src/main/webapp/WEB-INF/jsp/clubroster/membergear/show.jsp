<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Member Gear</h2>

<h2> ${memberGear.memberGearId} </h2>

<table class="table table-bordered table-hover">
    <tr>
        <th>Member Gear Id</th>
        <td>
            ${memberGear.memberGearId}
        </td>
    </tr>
    <tr>
        <th>Gear</th>
        <td>
            ${memberGear.gear}
        </td>
    </tr>
    <tr>
        <th>Club Member</th>
        <td>
            ${memberGear.clubMember}
        </td>
    </tr>
</table>