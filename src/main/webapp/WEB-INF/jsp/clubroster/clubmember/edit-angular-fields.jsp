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
   
    
        
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.username.$invalid && !resourceForm.username.$pristine }">
      <label for="username" class="control-label">Username</label>   
      <input type="text" id="username" ng-model="resource.username" name="username" required="" class="form-control"/>
      <p ng-show="resourceForm.username.$invalid && !resourceForm.username.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.firstName.$invalid && !resourceForm.firstName.$pristine }">
      <label for="firstName" class="control-label">First Name</label>   
      <input type="text" id="firstName" ng-model="resource.firstName" name="firstName" required="" class="form-control"/>
      <p ng-show="resourceForm.firstName.$invalid && !resourceForm.firstName.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.lastName.$invalid && !resourceForm.lastName.$pristine }">
      <label for="lastName" class="control-label">Last Name</label>   
      <input type="text" id="lastName" ng-model="resource.lastName" name="lastName" required="" class="form-control"/>
      <p ng-show="resourceForm.lastName.$invalid && !resourceForm.lastName.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.emailAddress.$invalid && !resourceForm.emailAddress.$pristine }">
      <label for="emailAddress" class="control-label">Email Address</label>   
      <input type="text" id="emailAddress" ng-model="resource.emailAddress" name="emailAddress" required="" class="form-control"/>
      <p ng-show="resourceForm.emailAddress.$invalid && !resourceForm.emailAddress.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.password.$invalid && !resourceForm.password.$pristine }">
      <label for="password" class="control-label">Password</label>   
      <input type="text" id="password" ng-model="resource.password" name="password" required="" class="form-control"/>
      <p ng-show="resourceForm.password.$invalid && !resourceForm.password.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.memberCode.$invalid && !resourceForm.memberCode.$pristine }">
      <label for="memberCode" class="control-label">Member Code</label>   
      <input type="text" id="memberCode" ng-model="resource.memberCode" name="memberCode" required="" class="form-control"/>
      <p ng-show="resourceForm.memberCode.$invalid && !resourceForm.memberCode.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.memberSince.$invalid && !resourceForm.memberSince.$pristine }">
      <label for="memberSince" class="control-label">Member Since</label>   
      <input type="text" id="memberSince" ng-model="resource.memberSince" name="memberSince" required="" class="form-control"/>
      <p ng-show="resourceForm.memberSince.$invalid && !resourceForm.memberSince.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      
        <div class="form-group" ng-class="{ 'has-error' : resourceForm.isGuest.$invalid && !resourceForm.isGuest.$pristine }">
      <label for="isGuest" class="control-label">Is Guest</label>   
      <input type="text" id="isGuest" ng-model="resource.isGuest" name="isGuest" required="" class="form-control"/>
      <p ng-show="resourceForm.isGuest.$invalid && !resourceForm.isGuest.$pristine" class="help-block"> is required.</p>
    </div>
          
    
      