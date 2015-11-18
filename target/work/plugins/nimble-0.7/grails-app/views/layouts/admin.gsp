<!doctype html>
<%@page import="org.apache.shiro.SecurityUtils"%>
<%@page import="grails.plugin.nimble.core.UserBase"%>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <title>
         <g:layoutTitle default="Grails"/>
      </title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
      <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
      <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
      <g:layoutHead/>
      <r:require modules="nimble-admin"/>
      <r:layoutResources />	
	  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	  <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
   </head>
   <body>
      <g:set var="currentUser" value="${UserBase.get(SecurityUtils.subject.principal)}" />
      <div class="navbar" id="top-header">
         <div class="navbar-inner">
			<a class="navbar-brand" href="${createLink(uri: '/')}">
			<img class="logo" src="${resource(plugin: 'kickstart', dir:'images', file:'brand_logo.png')}" alt="${meta(name:'app.name')}" width="20px" height="20px"/> 
			<p style="color:#fff;display:inline"> <g:message code="bfcrowd.label.admin.navbar.home"/> </p>

			</a>
            <div class="container-fluid">             
               <ul class="nav pull-right">
                  <li class="profile dropdown">
                     <a class="dropdown-toggle" href="javascript:" data-toggle="dropdown">
                     ${currentUser.username}
                     <b class="caret icon-white"></b>                           
                     </a>        
                     <ul class="dropdown-menu">
                        <li>
                           <g:link controller="user" action="show" id="${currentUser.id}">
                              <g:message code="bfcrowd.label.admin.dropdown.myAccount" />
                           </g:link>
                        </li>
                        <li>
                           <g:link controller="auth" action="signout">
                              <g:message code="bfcrowd.label.logout.navbar" />
                           </g:link>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
         </div>
      </div>
      <!-- Navbar -->
      <div class="main-container" id="main-container">
         <!-- Main content start -->
         <div id="sidebar" class="sidebar">
            <g:render template="/templates/nimble/navigation/sidenavigation" />
         </div>
         <!-- Side bar ends -->    
		<div id="main-content" class="main-content">
		   <div id="breadcrumbs" class="breadcrumbs">  </div>
		   <div class="container-fluid">
		      <div class="row-fluid">
		         <div id="right" class="span12">
		            <g:layoutBody />
		            </div>
		         </div>
		      </div>
		   </div>
		</div>
      <!-- Main container ends -->
      <%--  <n:sessionterminated /> --%>
      <r:layoutResources />
   </body>
</html>