<div id="groups">
   <h3>
      <g:message code="bfcrowd.label.admin.user.show.groups.heading" />
   </h3>
   <div id="assignedgroups"> </div>
   <div id="showaddgroups">
      <a id="showaddgroupsbtn" class="btn btn-success btn-small">
         <i class="icon-plus icon-white"></i>
         <g:message code="bfcrowd.label.admin.user.show.groups.addgroups" />
      </a>
   </div>
   <div id="addgroups">
      <h4>
         <g:message code="bfcrowd.label.admin.user.show.groups.add.heading" />
         <span>
            <g:message code="bfcrowd.label.admin.user.show.groups.add.descriptive" />
         </span>
      </h4>
      <form class="well form-inline">
         <g:textField name="qgroups" class="span3" placeholder="${message(code: 'bfcrowd.label.admin.user.show.groups.search')}"/>
         <button type="button" onClick="searchGroups('${parent.id.encodeAsHTML()}');" class="btn btn-primary btn-small">
            <i class="icon-search icon-white"></i>
            <g:message code="bfcrowd.label.admin.user.show.groups.add.search" />
         </button>
         <button type="button" id="closegroupsearchbtn" class="btn btn-warning btn-small">
            <g:message code="bfcrowd.label.admin.user.show.groups.add.close" />
         </button>
      </form>
      <div id="groupsearchresponse"></div>
   </div>
</div>