<g:if test="${roles?.size() > 0}">
   <table class="table table-striped">
      <thead>
         <tr>
            <th>
               <g:message code="bfcrowd.label.admin.user.show.roles.name" />
            </th>
            <th>
               <g:message code="bfcrowd.label.admin.user.show.roles.description" />
            </th>
            <th></th>
         </tr>
      </thead>
      <tbody>
         <g:each in="${roles}" status="i" var="role">
            <tr>
               <td>${role.name?.encodeAsHTML()}</td>
               <td>${role.description?.encodeAsHTML()}</td>
               <td>
                  <g:link controller="role" action="show" id="${role.id.encodeAsHTML()}" class="btn btn-info btn-mini">
                     <i class="icon-user icon-white"></i>
                     <g:message code="bfcrowd.label.admin.user.show.roles.view" />
                  </g:link>
                  <g:if test="${role.protect == false}">
                     <button onClick="removeRole('${ownerID.encodeAsHTML()}', '${role.id.encodeAsHTML()}');" class="btn btn-danger btn-mini">
                        <i class="icon-remove icon-white"></i>
                        <g:message code="bfcrowd.label.admin.user.show.roles.remove" />
                     </button>
                  </g:if>
                  <g:else>&nbsp;</g:else>
               </td>
            </tr>
         </g:each>
      </tbody>
   </table>
</g:if>
<g:else>
   <p>
      <g:message code="bfcrowd.label.admin.user.show.roles.noresults" />
   </p>
</g:else>