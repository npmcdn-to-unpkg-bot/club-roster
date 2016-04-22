<%--
  #%L
  Protogen
  %%
  Copyright (C) 2009 - 2015 University of Iowa Institute for Clinical and Translational Science (ICTS)
  %%
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
       http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  #L%
  --%>
<%@ include file="/WEB-INF/include.jsp"  %>
   
    
          
    
      
          
    <div class="form-group" ng-class="{ 'has-error' : resourceForm.gearId.$invalid && !resourceForm.gearId.$pristine }">
      <label for="gearId" class="control-label">Gear</label>
      <select ng-model="resource.gear.gearId" ng-options='o as o for o in  [<c:forEach var="x" items="${gearList}" varStatus="loopStatus">${ x.gearId }<c:if test="${!loopStatus.last}">,</c:if></c:forEach>]' required="" id="gearId" name="gearId" class="form-control">
	   <option value="">Select One</option>
	  </select>              
	  <p ng-show="resourceForm.gearId.$invalid && !resourceForm.gearId.$pristine" class="help-block"> is required.</p>		
	</div>		
            
    
      
          
    <div class="form-group" ng-class="{ 'has-error' : resourceForm.memberId.$invalid && !resourceForm.memberId.$pristine }">
      <label for="memberId" class="control-label">Club Member</label>
      <select ng-model="resource.clubMember.memberId" ng-options='o as o for o in  [<c:forEach var="x" items="${clubMemberList}" varStatus="loopStatus">${ x.memberId }<c:if test="${!loopStatus.last}">,</c:if></c:forEach>]' required="" id="memberId" name="memberId" class="form-control">
	   <option value="">Select One</option>
	  </select>              
	  <p ng-show="resourceForm.memberId.$invalid && !resourceForm.memberId.$pristine" class="help-block"> is required.</p>		
	</div>		
        