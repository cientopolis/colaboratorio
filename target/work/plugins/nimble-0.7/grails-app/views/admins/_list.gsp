
<table class="table table-striped table-bordered table-white">
  <thead>
	  <tr>
	    <th class="center"> ID </th>
	    <th><g:message code="bfcrowd.label.admins.username" /></th>
	    <th><g:message code="bfcrowd.label.admins.fullname" /></th>
	    <th class=""><g:message code="bfcrowd.label.admins.actions" /> </th>
	  </tr>
  </thead>
  <tbody>
  <g:each in="${admins}" status="i" var="user">
    <tr>
        <td class="center">
        	<g:link controller="user" action="show" id="${user.id}">${user.id}</g:link>
        </td>
      	<g:if test="${user.username.length() > 50}">
        	<td>${user.username?.substring(0,50).encodeAsHTML()}...</td>
		</g:if>
		<g:else>
			<td>${user.username?.encodeAsHTML()}</td>
		</g:else>
      <td>${user?.profile?.fullName.encodeAsHTML()}</td>
      <td class="actionButtons">
        <g:link controller="user" action="show" id="${user.id.encodeAsHTML()}" class="btn btn-info btn-mini">
            <i class="icon-user icon-white"></i>
            <g:message code="bfcrowd.label.admins.view" />
         </g:link>

        <g:if test="${currentAdmin != user}">
          <a onClick="deleteAdministrator('${user.id.encodeAsHTML()}', '${user.username.encodeAsHTML()}');" class="btn btn-warning btn-mini">
            <i class=" icon-remove icon-white"></i>
            <g:message code="bfcrowd.label.admins.revoke" />
          </a>
        </g:if>
      </td>
    </tr>
  </g:each>
  </tbody>
</table>