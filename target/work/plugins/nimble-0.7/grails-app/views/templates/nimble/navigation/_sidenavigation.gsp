<ul  class="nav nav-list" id="dashboard-menu">
   <li class="${controllerName == 'admins' ? 'active-menu-item' : ''}">
      <g:link controller="admins" action="index">
         <i class="icon-home"></i>
         <span><g:message code="bfcrowd.label.admin.admins" /></span>                                    
      </g:link>
      <i class="icon-chevron-right"></i> 
   </li>      
   <li class="${controllerName == 'user' ? 'active-menu-item' : ''}">       
      <g:link controller="user" action="list">
         <i class="icon-home"></i>
         <span><g:message code="bfcrowd.label.admin.users" /></span>
      </g:link>
      <i class="icon-chevron-right"></i>
   </li>
   <li class="${controllerName == 'role' ? 'active-menu-item' : ''}">
      <g:link controller="role" action="list">
         <i class="icon-home"></i>
         <span><g:message code="bfcrowd.label.admin.roles" /></span>      
      </g:link>
      <i class="icon-chevron-right"></i>
   </li>
   <li class="${controllerName == 'group' ? 'active-menu-item' : ''}">
      <g:link controller="group" action="list">
         <i class="icon-home"></i>
         <span><g:message code="bfcrowd.label.admin.groups" /></span>                     
      </g:link>
      <i class="icon-chevron-right"></i>
   </li>
</ul>