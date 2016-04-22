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
   
    
        
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.gearType.$invalid && !resourceForm.gearType.$pristine }">
      <label for="gearType" class="control-label">Gear Type</label>   
      <input type="text" id="gearType" ng-model="resource.gearType" name="gearType" required="" class="form-control"/>
      <p ng-show="resourceForm.gearType.$invalid && !resourceForm.gearType.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.modelName.$invalid && !resourceForm.modelName.$pristine }">
      <label for="modelName" class="control-label">Model Name</label>   
      <input type="text" id="modelName" ng-model="resource.modelName" name="modelName" required="" class="form-control"/>
      <p ng-show="resourceForm.modelName.$invalid && !resourceForm.modelName.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.makeName.$invalid && !resourceForm.makeName.$pristine }">
      <label for="makeName" class="control-label">Make Name</label>   
      <input type="text" id="makeName" ng-model="resource.makeName" name="makeName" required="" class="form-control"/>
      <p ng-show="resourceForm.makeName.$invalid && !resourceForm.makeName.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.description.$invalid && !resourceForm.description.$pristine }">
      <label for="description" class="control-label">Description</label>   
      <input type="text" id="description" ng-model="resource.description" name="description" required="" class="form-control"/>
      <p ng-show="resourceForm.description.$invalid && !resourceForm.description.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      