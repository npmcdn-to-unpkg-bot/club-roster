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

<c:url value="/gear/save" var="formActionUrl" />
<c:url value="/gear/list" var="cancelUrl" />

<div class="row">
	<div class="col-xs-12 col-sm-8 col-md-6 col-lg-4">
		<form:form method="post" commandName="gear" action="${ formActionUrl }" role="form">
    		<fieldset>
    		
    			<legend>Gear</legend>
   
    
  				<form:hidden path="gearId" />
      
    
      			<spring:bind path="gearType">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="gearType" class="control-label">Gear Type</label>
    					<form:input path="gearType"  class="form-control"/>
    				<form:errors path="gearType" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="modelName">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="modelName" class="control-label">Model Name</label>
    					<form:input path="modelName"  class="form-control"/>
    				<form:errors path="modelName" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="makeName">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="makeName" class="control-label">Make Name</label>
    					<form:input path="makeName"  class="form-control"/>
    				<form:errors path="makeName" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
      			<spring:bind path="description">        
	     			<div class="form-group ${status.error ? 'has-error' : ''}">
	      				<label for="description" class="control-label">Description</label>
    					<form:input path="description"  class="form-control"/>
    				<form:errors path="description" class="help-block" element="span" />
    	     			</div>
				</spring:bind>	
      
    
         			
    			<input type="submit" value="Save" class="btn btn-primary" />
    			<a class="btn btn-default" href="${ cancelUrl }">Cancel</a>
    			
    		</fieldset>
		</form:form>
	</div>
</div>