<!doctype html>
<html>
<head>
<title><g:message code="bfcrowd.label.login.title" /></title>
<r:require modules="nimble-login" />
<r:layoutResources />
</head>
<body>
	<div class="login-container">
		<div class="login-content">
			<h2 class="border-bottom">
				<g:message code="bfcrowd.label.login.signIn" />
			</h2>
			<n:flashembed />
			<g:if test="${registration}">
				<div class="login-options">
					<h4>
						<g:message code="bfcrowd.label.login.signup.heading" />
					</h4>
					<g:message code="bfcrowd.label.login.signup.descriptive" />
					<g:link controller="account" action="createuser">
						<g:message code="bfcrowd.label.login.signup" />
					</g:link>
				</div>
				<div style="text-align: center; margin-bottom: 3px;">
					--
					<g:message code="bfcrowd.label.login.or" />
					--
				</div>
			</g:if>
			<g:form action="signin" name="login-form" method="post">
				<div class="login-input">
					<div class="control-group">
						<div class="controls ">
							<input type="hidden" name="targetUri" value="${targetUri}" /> <input
								type="text" name="username" id="username"
								placeholder="${message(code:'bfcrowd.label.login.username')}">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="password" name="password" id="password"
								placeholder="${message(code:'bfcrowd.label.login.password')}">
						</div>
					</div>
				</div>
				<div class="login-actions">
					<label class="checkbox" style="display: inline-block;"> <input
						type="checkbox" name="rememberme"> <g:message
							code="bfcrowd.label.login.rememberMe" />
					</label> <span class="pull-right clearfix">
						<button type="submit" class="btn btn-primary">
							<g:message code="bfcrowd.button.login" />
						</button>
					</span>
				</div>
				
			</g:form>
			
			<!--   <div id="border" class="login-options border-top">
				<h4>
					<g:message code="bfcrowd.label.login.forgottenPassword.heading" />
				</h4>
				<g:message code="bfcrowd.label.login.forgottenPassword.descriptive" />
				<g:link controller="account" action="forgottenpassword"
					style="text-transform:lowercase;">
					<g:message code="bfcrowd.label.login.resetPassword" />
				</g:link>
			</div> -->			

			<div id="border" class="login-options border-top";>

				<h4>
					<g:message code="bfcrowd.label.login.withFB" />
				</h4>

				<!--  <div id="login-btn" style="margin-top: 10pt; display: none">
					<a "href="#" class="btn btn-primary"
						style="text-align: center;"><g:message code="bfcrowd.label.login.button.withFB" /></a>
				</div> -->
				
				   <fb:login-button id="login-btn" data-scope="email,user_friends,public_profile" style="margin-top: 10pt; display: none" data-show-faces="false" width="600" data-max-rows="1" onlogin="afterFbLogin()"><g:message code="bfcrowd.label.login.button.withFB" /></fb:login-button> 			
				
				<!--  <div id="login-btn" class="fb-login-button" data-max-rows="1" data-size="medium" data-show-faces="true" data-auto-logout-link="false"><g:message code="bfcrowd.label.login.button.withFB" /></div>-->
				
				<div id="login-controller" style="margin-top: 10pt; display: none">
					<g:message code="bfcrowd.label.login.withFB.alreadyIn" />
					<g:form class="form-horizontal" controller="userBF" action="signinfb"
						name="signup-form" method="post">

						<div class="form-group">
							<!-- <label for="inputUsername" class="col-sm-4 control-label"><g:message code="bfcrowd.label.account.registeraccount.username" /></label> -->
							<div class="col-sm-9">
								<input type="hidden" readonly type="text" size="30" id="userName"
									name="username" class="form-control">
							</div>
						</div>

						<div class="form-group">
							<label for="inputFullname" class="col-sm-4 control-label"><g:message code="bfcrowd.label.account.registeraccount.fullName" /></label>
							<div class="col-sm-9">
								<input readonly type="text" size="30" id="fullName"
									name="fullName">
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail" class="col-sm-4 control-label"><g:message code="bfcrowd.label.account.registeraccount.email" /></label>
							<div class="col-sm-9">
								<input type="text" size="30" id="email" name="email" required>
							</div>
						</div>

						<div class="login-actions">
							<span class="pull-right clearfix">
								<button type="submit" class="btn btn-primary">
									<g:message
										code="bfcrowd.label.login.registerlogin" />
								</button>
							</span>
						</div>
					</g:form>
				</div>


			</div>
		</div>
		<r:layoutResources />
</body>
</html>