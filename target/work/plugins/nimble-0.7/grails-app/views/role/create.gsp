<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <meta name="layout" content="${grailsApplication.config.nimble.layout.administration}"/>
      <title>
         <g:message code="bfcrowd.label.admin.role.create.title" />
      </title>
   </head>
   <body>
      <h3>
         <g:message code="bfcrowd.label.admin.role.create.heading" />
      </h3>
	  <span>
	    <g:message code="bfcrowd.label.admin.role.create.descriptive" />
	  </span>
      <div class="box-generic">
         <n:errors bean="${role}"/>
         <g:form action="save" class="form-horizontal">
            <f:with bean="role">
               <f:field property="name" label="bfcrowd.label.admin.role.create.name" />
               <f:field property="description" label="bfcrowd.label.admin.role.create.description" />
            </f:with>
            <div class="form-actions">
               <button type="submit" class="btn btn-primary">
                  <i class="icon-ok icon-white"></i>
                  <g:message code="bfcrowd.label.admin.role.create.createRole" />
               </button>
               <g:link action="list" class="btn btn-warning">
                  <i class="icon-arrow-left icon-white"></i>
                  <g:message code="bfcrowd.label.admin.role.create.cancel" />
               </g:link>
            </div>
         </g:form>
      </div>
   </body>
</html>