<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Club Member</h2>

<h2> ${clubMember.memberId} </h2>

<table class="table table-bordered table-hover">
    <tr>
        <th>Member Id</th>
        <td>
            ${clubMember.memberId}
        </td>
    </tr>
    <tr>
        <th>Username</th>
        <td>
            ${clubMember.username}
        </td>
    </tr>
    <tr>
        <th>First Name</th>
        <td>
            ${clubMember.firstName}
        </td>
    </tr>
    <tr>
        <th>Last Name</th>
        <td>
            ${clubMember.lastName}
        </td>
    </tr>
    <tr>
        <th>Email Address</th>
        <td>
            ${clubMember.emailAddress}
        </td>
    </tr>
    <tr>
        <th>Password</th>
        <td>
            ${clubMember.password}
        </td>
    </tr>
    <tr>
        <th>Member Code</th>
        <td>
            ${clubMember.memberCode}
        </td>
    </tr>
    <tr>
        <th>Member Since</th>
        <td>
            ${clubMember.memberSince}
        </td>
    </tr>
    <tr>
        <th>Is Guest</th>
        <td>
            ${clubMember.isGuest}
        </td>
    </tr>
    <tr>
        <th>Member Gears</th>
        <td>
            <ul>
                <c:forEach items="${clubMember.memberGears}" var="item" varStatus="itemStatus" >
                    <li><a href="../membergear/edit?memberGearId=${item.memberGearId}" > ${item.memberGearId}</a></li>
                </c:forEach>
            </ul>
        </td>
    </tr>
</table>