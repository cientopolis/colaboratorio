<h3>
   <g:message code="bfcrowd.label.admin.user.show.roles.heading" />
</h3>
<div id="assignedroles">
</div>
<div id="showaddroles">
   <a id="showaddrolesbtn" class="btn btn-success btn-small">
      <i class="icon-plus icon-white"></i>
      <g:message code="bfcrowd.label.admin.user.show.roles.addroles" />
   </a>
</div>
<div id="addroles">
   <h4>
      <g:message code="bfcrowd.label.admin.user.show.roles.add.heading" />
   </h4>
   <span><g:message code="bfcrowd.label.admin.user.show.roles.add.descriptive" /></span>
   <form class="well form-inline">
      <g:textField name="qroles" class="span3" placeholder="${message(code: 'bfcrowd.label.admin.user.show.roles.search')}"/>
      <button type="button" onClick="searchRoles(${parent.id.encodeAsHTML()});" class="btn btn-primary btn-small">
         <i class="icon-search icon-white"></i>
         <g:message code="bfcrowd.label.admin.user.show.roles.add.search" />
      </button>
      <button type="button" id="closerolesearchbtn" class="btn btn-warning btn-small">
         <g:message code="bfcrowd.label.admin.user.show.roles.add.close" />
      </button>
   </form>
   <div id="rolesearchresponse" class="clear">
   </div>
</div>