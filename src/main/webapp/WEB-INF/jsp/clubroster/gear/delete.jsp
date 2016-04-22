<%@ include file="/WEB-INF/include.jsp"  %>

<h2>Delete Gear</h2>

<c:url value="/gear/delete" var="formActionUrl" />

<form:form method="post" action="${ formActionUrl }">
    <fieldset>
        <legend>Are you sure you want to delete this gear?</legend>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Gear Id</th>
                    <th>Gear Type</th>
                    <th>Model Name</th>
                    <th>Make Name</th>
                    <th>Description</th>
                    <th>Member Gears</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        ${ gear.gearId }
                    </td>
                    <td>
                        ${ gear.gearType }
                    </td>
                    <td>
                        ${ gear.modelName }
                    </td>
                    <td>
                        ${ gear.makeName }
                    </td>
                    <td>
                        ${ gear.description }
                    </td>
                    <td>
                        <ul>
                            <c:forEach items="${ gear.memberGears }" var="item" varStatus="itemStatus">
                                <li>${ item.memberGearId }</li>
                            </c:forEach>
                        </ul>
                    </td>
                </tr>
            </tbody>
        </table>

        <input type="submit" name="submit" value="Yes" class="btn btn-danger" />
        <input type="submit" name="submit" value="No" class="btn btn-default" />

        <input type="hidden" name="gearId" value="${ gear.gearId }" />

    </fieldset>
</form:form>