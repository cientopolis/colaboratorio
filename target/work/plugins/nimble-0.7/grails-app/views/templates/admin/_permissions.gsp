<h3>
   <g:message code="bfcrowd.label.admin.user.show.permissions.heading" />
</h3>
<div id="currentpermission"> </div>
<div id="showaddpermissions">
   <a id="showaddpermissionsbtn" class="btn btn-success btn-small">
      <i class="icon-plus icon-white"></i>
      <g:message code="bfcrowd.label.admin.user.show.permissions.addpermission" />
   </a>
</div>
<div id="addpermissions">
   <h4>
      <g:message code="bfcrowd.label.admin.user.show.permissions.add.heading" />
   </h4>
	<span>
		<g:message code="bfcrowd.label.admin.user.show.permissions.add.descriptive" />
	</span>
   <div id="addpermissionserror"></div>
   <form class="well form-inline">
      <g:textField size="15" name="first_p" class="span2"/>
      <strong>:</strong>
      <g:textField size="15" name="second_p" class="span2"/>
      <strong>:</strong>
      <g:textField size="15" name="third_p" class="span2"/>
      <strong>:</strong>
      <g:textField size="15" name="fourth_p" class="span2"/>
   </form>
   <button type="button" onClick="createPermission(${parent.id.encodeAsHTML()});" class="btn btn-success btn-small">
      <i class="icon-ok-sign icon-white"></i>
      <g:message code="bfcrowd.label.admin.user.show.permissions.createpermission" />
   </button>
   <button type="button" id="closepermissionsaddbtn" class="btn btn-warning btn-small">
      <g:message code="bfcrowd.label.admin.user.show.permissions.close" />
   </button>
</div>