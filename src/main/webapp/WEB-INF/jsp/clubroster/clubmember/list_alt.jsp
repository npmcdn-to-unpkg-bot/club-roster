<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Club Member List</h2>

<a href="add" class="btn btn-default">Add</a>

<div id="error_div" class="alert alert-error" style="display: none;">
    <%-- div for showing errors, see messager.js.showMessage --%>
</div>

<table class="table table-bordered table-striped table-hover table-datatable">
    <thead>
        <tr>
            <th>Member Id</th>
            <th>Username</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email Address</th>
            <th>Password</th>
            <th>Member Code</th>
            <th>Member Since</th>
            <th>Is Guest</th>
            <th>Member Gears</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${ clubMemberList }" var="clubMember"  varStatus="status">
            <tr>
                <td><a href="edit?memberId=${clubMember.memberId}">${clubMember.memberId}</a></td>
                <td>${clubMember.username}</td>
                <td>${clubMember.firstName}</td>
                <td>${clubMember.lastName}</td>
                <td>${clubMember.emailAddress}</td>
                <td>${clubMember.password}</td>
                <td>${clubMember.memberCode}</td>
                <td>${clubMember.memberSince}</td>
                <td>${clubMember.isGuest}</td>
                <td>memberGears</td>
                <td>
                    <a href="edit?memberId=${clubMember.memberId}">edit</a> 
                    <a href="show?memberId=${clubMember.memberId}">view</a>
                    <a href="delete?memberId=${clubMember.memberId}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>