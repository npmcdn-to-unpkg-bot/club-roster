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

<c:url value="/clubmember/save" var="formActionUrl" />
<c:url value="/clubmember/list" var="cancelUrl" />

<div class="row">
	<div class="col-xs-12 col-sm-8 col-md-6 col-lg-4">
		<form:form method="post" commandName="clubMember" action="${ formActionUrl }" role="form">
    		<fieldset>
    		
    			<legend>Club Member</legend>
   
    
  				<form:hidden path="memberId" />
      
    
      			<spring:bind path="username">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="username" class="control-label">Username</label>
    					<form:input path="username"  class="form-control"/>
    				<form:errors path="username" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="firstName">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="firstName" class="control-label">First Name</label>
    					<form:input path="firstName"  class="form-control"/>
    				<form:errors path="firstName" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="lastName">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="lastName" class="control-label">Last Name</label>
    					<form:input path="lastName"  class="form-control"/>
    				<form:errors path="lastName" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="emailAddress">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="emailAddress" class="control-label">Email Address</label>
    					<form:input path="emailAddress"  class="form-control"/>
    				<form:errors path="emailAddress" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="password">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="password" class="control-label">Password</label>
    					<form:input path="password"  class="form-control"/>
    				<form:errors path="password" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="memberCode">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="memberCode" class="control-label">Member Code</label>
    					<form:input path="memberCode"  class="form-control"/>
    				<form:errors path="memberCode" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="memberSince">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="memberSince" class="control-label">Member Since</label>
    					<form:input path="memberSince"  class="form-control"/>
    				<form:errors path="memberSince" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="isGuest">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="isGuest" class="control-label">Is Guest</label>
    					<form:input path="isGuest"  class="form-control"/>
    				<form:errors path="isGuest" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
         			
    			<input type="submit" value="Save" class="btn btn-primary" />
    			<a class="btn btn-default" href="${ cancelUrl }">Cancel</a>
    			
    		</fieldset>
		</form:form>
	</div>
</div>