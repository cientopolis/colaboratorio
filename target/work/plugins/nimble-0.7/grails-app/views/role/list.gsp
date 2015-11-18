<%@ page import="grails.plugin.nimble.core.Role" %>
<head>
   <meta name="layout" content="${grailsApplication.config.nimble.layout.administration}"/>
   <title>
      <g:message code="bfcrowd.label.admin.role.list.title" />
   </title>
</head>
<body>
   <h3>
      <g:message code="bfcrowd.label.admin.role.list.heading" />
   </h3>
   <div class="widget widget-heading-simple widget-body-gray">
      <div class="widget-body">
         <div class="row-fluid">
            <div class="span12">
               <g:link controller="role" action="create" class="btn btn-primary btn-small">
                  <g:message code="bfcrowd.label.admin.role.createRole" />
               </g:link>
            </div>
            <div class="pagination-info pull-right">
               <n:pageinfo list="${roles}" total="${Role.count()}" name="Roles"/>
            </div>            
            <table class="table table-striped table-bordered table-white">
               <thead>
                  <tr>
                     <g:sortableColumn property="id" titleKey="bfcrowd.label.admin.role.id" class="center" />
                     <g:sortableColumn property="name" titleKey="bfcrowd.label.admin.role.name"/>
                     <th>
                        <g:message code="bfcrowd.label.admin.role.description" />
                     </th>
                     <g:sortableColumn property="dateCreated" titleKey="bfcrowd.label.admin.role.created" />
                     <g:sortableColumn property="lastUpdated" titleKey="bfcrowd.label.admin.role.lastUpdated" />
                     <th class="center"><g:message code="bfcrowd.label.admin.role.actions" /></th>
                  </tr>
               </thead>
               <tbody>
                  <g:each in="${roles}" status="i" var="role">
                     <tr>
                        <td class="center">
                           <g:link action="show" id="${role.id}">${role.id}</g:link>
                        </td>
                        <td>${role.name?.encodeAsHTML()}</td>
                        <td>${role.description?.encodeAsHTML()}</td>
                        <td>
                           <g:formatDate date="${role.dateCreated}"/>
                        </td>
                        <td>
                           <g:formatDate date="${role.lastUpdated}"/>
                        </td>
                        <td class="center actionButtons">
                           <span class="actionButton">
                              <g:link action="show" id="${role.id}" class="btn btn-primary btn-mini">
                                 <i class="icon-user icon-white"></i>
                                 <g:message code="bfcrowd.label.admin.role.view" />
                              </g:link>
                           </span>
                        </td>
                     </tr>
                  </g:each>
               </tbody>
            </table>
            <div class="paginateButtons">
               <g:paginate total="${Role.count()}"/>
            </div>
         </div>
      </div>
   </div>
</body>