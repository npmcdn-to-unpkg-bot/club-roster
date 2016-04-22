<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Delete Club Member</h2>

<c:url value="/clubmember/delete" var="formActionUrl" />

<form:form method="post" action="${ formActionUrl }">
    <fieldset>
        <legend>Are you sure you want to delete this club member?</legend>
        <table class="table table-bordered table-hover">
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
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        ${ clubMember.memberId }
                    </td>
                    <td>
                        ${ clubMember.username }
                    </td>
                    <td>
                        ${ clubMember.firstName }
                    </td>
                    <td>
                        ${ clubMember.lastName }
                    </td>
                    <td>
                        ${ clubMember.emailAddress }
                    </td>
                    <td>
                        ${ clubMember.password }
                    </td>
                    <td>
                        ${ clubMember.memberCode }
                    </td>
                    <td>
                        ${ clubMember.memberSince }
                    </td>
                    <td>
                        ${ clubMember.isGuest }
                    </td>
                    <td>
                        <ul>
                            <c:forEach items="${ clubMember.memberGears }" var="item" varStatus="itemStatus">
                                <li>${ item.memberGearId }</li>
                            </c:forEach>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>

        <input type="submit" name="submit" value="Yes" class="btn btn-danger" />
        <input type="submit" name="submit" value="No" class="btn btn-default" />

        <input type="hidden" name="memberId" value="${ clubMember.memberId }" />

    </fieldset>
</form:form>