<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Delete Member Gear</h2>

<c:url value="/membergear/delete" var="formActionUrl" />

<form:form method="post" action="${ formActionUrl }">
    <fieldset>
        <legend>Are you sure you want to delete this member gear?</legend>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Member Gear Id</th>
                    <th>Gear</th>
                    <th>Club Member</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        ${ memberGear.memberGearId }
                    </td>
                    <td>
                        ${ memberGear.gear }
                    </td>
                    <td>
                        ${ memberGear.clubMember }
                    </td>
                </tr>
            </tbody>
        </table>

        <input type="submit" name="submit" value="Yes" class="btn btn-danger" />
        <input type="submit" name="submit" value="No" class="btn btn-default" />

        <input type="hidden" name="memberGearId" value="${ memberGear.memberGearId }" />

    </fieldset>
</form:form>