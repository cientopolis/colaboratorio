<head>
   <meta name="layout" content="${grailsApplication.config.nimble.layout.administration}"/>
   <title>
      <g:message code="bfcrowd.label.admin.user.create.title" />
   </title>
</head>
<body>
   <h3>
      <g:message code="bfcrowd.label.admin.user.create.heading" />
   </h3>   
      <span>
         <g:message code="bfcrowd.label.admin.user.create.descriptive" />
      </span>

   <div class="box-generic">
      <n:errors bean="${user}"/>
      <g:form action="save" class="form-horizontal">
         <div class="control-group">
            <label class="control-label" for="username">
               <g:message code="bfcrowd.label.admin.user.create.username" />
               * 
            </label>
            <div class="controls">      
               <input type="text" id="username" name="username" value="${fieldValue(bean: user, field: 'username')}">            
               <span class="help-inline">
               <a href="#" id="usernamepolicybtn" rel="usernamepolicy" title="${message(code:'nimble.template.usernamepolicy.title')}">
               <i class="icon-question-sign"></i>
               </a>          
               </span>            
            </div>
         </div>
         <div class="control-group">
            <label class="control-label" for="pass">
               <g:message code="bfcrowd.label.admin.user.create.password" />
               * 
            </label>
            <div class="controls">      
               <input type="password" id="pass" name="pass" class="password" value="${user.pass?.encodeAsHTML()}">
               <span class="help-inline">
               <a href="#" id="passwordpolicybtn" rel="passwordpolicy" title="${message(code:'nimble.template.passwordpolicy.title')}">
               <i class="icon-question-sign"></i>
               </a>          
               </span>
            </div>
         </div>
         <div class="control-group">
            <label class="control-label" for="passConfirm">
               <g:message code="bfcrowd.label.admin.user.create.password.confirmation" />
               * 
            </label>
            <div class="controls">      
               <input type="password" id="passConfirm" name="passConfirm" value="${user.passConfirm?.encodeAsHTML()}">
            </div>
         </div>
         <div class="control-group">
            <label class="control-label" for="fullName">
               <g:message code="bfcrowd.label.admin.user.create.fullname" />
            </label>
            <div class="controls">      
               <input type="text" id="fullName" name="fullName"  value="${user.profile?.fullName?.encodeAsHTML()}">
            </div>
         </div>
         <div class="control-group">
            <label class="control-label" for="email">
               <g:message code="bfcrowd.label.admin.user.create.email" />
            </label>
            <div class="controls">      
               <input type="email" id="email" name="email"  value="${user.profile?.email?.encodeAsHTML()}">
            </div>
         </div>

         <!--  <div class="control-group">
            <label class="control-label" for="wikiUser">
               <g:message code="bfcrowd.label.admin.user.create.wikiUser" />
               * 
            </label>
            <div class="controls">      
               <input type="text" id="wikiUser" name="wikiUser" value="{user.wikipediaUserID?.encodeAsHTML()}">
            </div>
         </div>    -->     
         
         <div class="form-actions">
            <button type="submit" class="btn btn-primary">
               <i class="icon-ok icon-white"></i>
               <g:message code="bfcrowd.label.admin.user.create.createUser" />
            </button>
            <g:link action="list" class="btn btn-warning">
               <i class="icon-arrow-left icon-white"></i>
               <g:message code="bfcrowd.label.admin.user.create.cancel" />
            </g:link>
         </div>
      </g:form>
   </div>
   <n:usernamepolicy/>
   <n:passwordpolicy/>
</body>