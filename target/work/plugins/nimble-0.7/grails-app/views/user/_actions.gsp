<ul class="dropdown-menu">
   <li id="disableuser">
      <a onClick="disableUser('${user.id}'); return false;" href="#">
         <g:message code="bfcrowd.label.admin.user.show.disableaccount" />
      </a>
   </li>
   <li id="enableuser">
      <a onClick="enableUser('${user.id}'); return false;" href="#">
         <g:message code="bfcrowd.label.admin.user.show.enableaccount" />
      </a>
   </li>
   <li id="disableuserapi">
      <a onClick="disableAPI('${user.id}'); return false;" href="#">
         <g:message code="bfcrowd.label.admin.user.show.disableapi" />
      </a>
   </li>
   <li id="enableuserapi">
      <a onClick="enableAPI('${user.id}'); return false;" href="#">
         <g:message code="bfcrowd.label.admin.user.show.enableapi" />
      </a>
   </li>
</ul>