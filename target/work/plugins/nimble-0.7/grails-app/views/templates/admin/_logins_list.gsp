<g:if test="${logins?.size() > 0}">

  <p>
	<g:message code="bfcrowd.label.admin.user.show.logins.list.heading" args="[logins.size(), totalCount]"/>
  </p>

  <table class="table table-striped">
    <thead>
	    <tr>
	      <th><g:message code="bfcrowd.label.admin.user.show.logins.list.remoteaddress" /></th>
	      <th><g:message code="bfcrowd.label.admin.user.show.logins.list.remotehost" /></th>
	      <th><g:message code="bfcrowd.label.admin.user.show.logins.list.useragent" /></th>
	      <th><g:message code="bfcrowd.label.admin.user.show.logins.list.time" /></th>
	    </tr>
    </thead>
    <tbody>
    <g:each in="${logins}" status="i" var="login">
      <tr>
        <td>${login.remoteAddr?.encodeAsHTML()}</td>
        <td>${login.remoteHost?.encodeAsHTML()}</td>
        <td>${login.userAgent?.encodeAsHTML()}</td>
        <td>${login.dateCreated?.encodeAsHTML()}</td>
      </tr>
    </g:each>
    </tbody>
  </table>

</g:if>
<g:else>

  <p>
    <g:message code="bfcrowd.label.admin.user.show.logins.list.noresults" />
  </p>
  
</g:else>