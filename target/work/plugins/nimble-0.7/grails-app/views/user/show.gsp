<head>
   <meta name="layout" content="${grailsApplication.config.nimble.layout.administration}" />
   <title>
      <g:message code="bfcrowd.label.admin.user.show.title" />
   </title>
   <r:script>
      <njs:user user="${user}" />
      <njs:permission parent="${user}" />
      <njs:role parent="${user}" />
      <njs:group parent="${user}" />
   </r:script>
</head>
<body>
   <h3>
      <g:message code="bfcrowd.label.admin.user.show.heading"/>
      <span>
      </span>
   </h3>
   <div class="row-fluid">
      <div class="span5">
         <div class="box-generic">
            <header>
               <h2>
                  <g:message code="bfcrowd.label.admin.user.show.details.heading" />
               </h2>
               <div class="pull-right btn-group">
                  <g:link controller="user" action="edit" id="${user.id}" class="btn btn-success btn-small">
                     <g:message code="bfcrowd.label.admin.user.show.edit" />
                  </g:link>
                  <g:if test="${user.external}">
                     <g:link controller="user" action="changelocalpassword" id="${user.id}" class="btn btn-small btn-success">
                        <g:message code="bfcrowd.label.admin.user.show.changelocalpassword" />
                     </g:link>
                  </g:if>
                  <g:else>
                     <g:link controller="user" action="changepassword" id="${user.id}" class="btn btn-small btn-success">
                        <g:message code="bfcrowd.label.admin.user.show.changepassword" />
                     </g:link>
                  </g:else>
                  <a href="#" class="btn btn-info btn-small dropdown-toggle" data-toggle="dropdown">
                     <g:message code="bfcrowd.label.admin.user.show.more" default="More"/>
                     <span class="caret"></span>
                  </a>
                  <g:render template="actions" model="[user:user]"></g:render>
               </div>
            </header>
            <dl>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.username" />
               </dt>
               <dd>${user.username?.encodeAsHTML()}</dd>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.fullname" />
               </dt>
               <dd>${user.profile.fullName?.encodeAsHTML() ?: message(code:'nimble.label.none')}</dd>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.email" />
               </dt>
               <dd>${user.profile.email?.encodeAsHTML() ?: g.message(code:'nimble.label.none')}</dd>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.created" />
               </dt>
               <dd>
                  <g:formatDate format="E dd/MM/yyyy HH:mm:s:S" date="${user.dateCreated}" />
               </dd>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.lastupdated" />
               </dt>
               <dd>
                  <g:formatDate format="E dd/MM/yyyy HH:mm:s:S" date="${user.lastUpdated}" />
               </dd>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.type" />
               </dt>
               <dd>
                  <g:if test="${user.external}">
                     <g:message code="bfcrowd.label.admin.user.show.external.management" />
                  </g:if>
                  <g:else>
                     <g:message code="bfcrowd.label.admin.user.show.local.management" />
                  </g:else>
               </dd>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.state" />
               </dt>
               <dd>
                  <div id="disableduser">
                     <g:message code="bfcrowd.label.admin.user.show.enabled" />
                  </div>
                  <div id="enableduser">
                     <g:message code="bfcrowd.label.admin.user.show.disabled" />
                  </div>
               </dd>
               <dt>
                  <g:message code="bfcrowd.label.admin.user.show.remoteapi" />
               </dt>
               <dd>
                  <div id="enabledapi">
                     <span class="icon icon_tick">&nbsp;</span><g:message code="bfcrowd.label.admin.user.show.enabledapi"/>
                  </div>
                  <div id="disabledapi">
                     <span class="icon icon_cross">&nbsp;</span><g:message code="bfcrowd.label.admin.user.show.disabledapi"/>
                  </div>
               </dd>
            </dl>
         </div>
      </div>
   </div>
   <div class="box-generic">
      <div id="tabs" class="tabbable">
         <ul class="nav nav-tabs">
            <li class="active">
               <a href="#tab-extendedinfo" class="icon icon_user" data-toggle="tab">
                  <g:message code="bfcrowd.label.admin.user.show.extendedinformation" />
               </a>
            </li>
            <li>
               <a href="#tab-permissions" class="icon icon_lock" data-toggle="tab">
                  <g:message code="bfcrowd.label.admin.user.show.permissions" />
               </a>
            </li>
            <li>
               <a href="#tab-roles" class="icon icon_cog" data-toggle="tab">
                  <g:message code="bfcrowd.label.admin.user.show.roles" />
               </a>
            </li>
            <li>
               <a href="#tab-groups" class="icon icon_group" data-toggle="tab">
                  <g:message code="bfcrowd.label.admin.user.show.groups" />
               </a>
            </li>
            <li>
               <a href="#tab-logins" class="icon icon_key" data-toggle="tab">
                  <g:message code="bfcrowd.label.admin.user.show.logins" />
               </a>
            </li>
         </ul>
         <div class="tab-content">
            <div id="tab-extendedinfo" class="tab-pane active">
               <g:render template="/templates/nimble/user/extendedinformation" contextPath="/" model="[user:user]" />
            </div>
            <div id="tab-permissions" class="tab-pane">
               <g:render template="/templates/admin/permissions" contextPath="${pluginContextPath}" model="[parent:user]" />
            </div>
            <div id="tab-roles" class="tab-pane">
               <g:render template="/templates/admin/roles" contextPath="${pluginContextPath}" model="[parent:user]" />
            </div>
            <div id="tab-groups" class="tab-pane">
               <g:render template="/templates/admin/groups" contextPath="${pluginContextPath}" model="[parent:user]" />
            </div>
            <div id="tab-logins" class="tab-pane">
               <g:render template="/templates/admin/logins" contextPath="${pluginContextPath}" model="[parent:user]" />
            </div>
         </div>
      </div>
   </div>
</body>