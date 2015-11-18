<!doctype html>
<html>
   <head>  
      <title>
         <g:message code="bfcrowd.label.account.registeraccount.title" />
      </title>
      <r:require modules="nimble-login"/>
      <r:layoutResources/>
   </head>
   <body>
      <div class="login-container">
         <div class="login-content">
            <h2 class="border-bottom">
               <g:message code="bfcrowd.label.account.registeraccount.heading" />
            </h2>
            <n:flashembed/>
            <n:errors bean="${user}"/>
            <g:form action="saveuser" name="signup-form" method="post">
               <div class="login-input">
                  <div class="control-group">
                     <div class="controls ">                         
                        <input type="text" id="username" name="username" value="${fieldValue(bean: user, field: 'username')}" placeholder="${message(code:'bfcrowd.label.account.registeraccount.username')}"/>                                                  
                     </div>
                  </div>
                  <div class="control-group">
                     <div class="controls">
                        <input type="password" size="30" id="pass" name="pass" value="${user.pass?.encodeAsHTML()}" placeholder="${message(code:'bfcrowd.label.account.registeraccount.password')}"/> 
                     </div>
                  </div>
                  <div class="control-group">
                     <div class="controls">
                        <input type="password" size="30" id="passConfirm" name="passConfirm" value="${user.passConfirm?.encodeAsHTML()}" placeholder="${message(code:'bfcrowd.label.account.registeraccount.confirmPass')}"/> 						                   
                     </div>
                  </div>
                  <div class="control-group">
                     <div class="controls">
                        <input type="text" size="30" id="fullName1" name="fullName" value="${user.profile?.fullName?.encodeAsHTML()}" placeholder="${message(code:'bfcrowd.label.account.registeraccount.fullName')}"]> 						                   
                     </div>
                  </div>
                  <div class="control-group">
                     <div class="controls">
                        <input type="text" size="30" id="email1" name="email" value="${user.profile?.email?.encodeAsHTML()}" placeholder="${message(code:'bfcrowd.label.account.registeraccount.email')}"/> 						                   
                     </div>
                  </div>
				  
				  <div class="control-group">
				     <div class="controls">   
				     	<div>
				     	<label style="display:inline"> <g:message code="bfcrowd.label.account.registeraccount.requestRole" /> </label> 
				     	<input style="float:right;width:10%" type="checkbox" name="requests" >
				        </div>
				     </div>
				  </div>   		
				      
               </div>
       
               <div class="login-actions">
                  <span class="pull-right clearfix">
                     <button type="submit" class="btn btn-primary">
                        <g:message code="bfcrowd.label.account.registeraccount.register" />
                     </button>
                  </span>
               </div>
               
            </g:form>
         </div>
      </div>
      <r:layoutResources/>
   </body>
</html>