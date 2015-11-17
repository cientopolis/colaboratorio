//var app_id = '872159592856194';
//var app_id = '864102200328600'; //deployed
var app_id = '865746580140252';
var scopes = 'email, user_friends, public_profile';

// Load the SDK asynchronously
(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id))
		return;
	js = d.createElement(s);
	js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

window.fbAsyncInit = function() {
	FB.init({
		appId : app_id,
		cookie : true, // enable cookies to allow the server to access the
		// session
		xfbml : true, // parse social plugins on this page
		version : 'v2.4' // use version 2.4
	});
	
	$("#login-btn, #signup-btn").click(function(){
		FB.login(function(){}, {scope: scopes});
	});
	$("#post-btn").click(function() {
		facebookPost();
	});
	$("#logout-btn").click(function() {
		FB.logout();
		window.location.reload();
	});

	FB.getLoginStatus(function(response) {
		statusChangeCallback(response);
	}

	);

};

// This is called with the results from from FB.getLoginStatus().
function statusChangeCallback(response) {
	if (response.status === 'connected') {
		showLoginForm(response);
	} else {
		showLoginButton();
	}
}

function afterFbLogin() {
	window.location.reload(true);
}

var showLoginButton = function() {
	$('#login-btn').show();
}

var showLoginForm = function(response) {
	FB.api('/me?fields=id,name,email', function(response) {
		$('#login-controller').show();
		$('#userName').val(response.id);
		$('#fullName').val(response.name);
		$('#email').val(response.email);
	});
}
// funcion que postea en el muro del usuario: "esto es una prueba"
var facebookPost = function() {
	FB.login(function() {
		FB.api('/me/feed', 'post', {
			message : 'esto es una prueba!'
		});
	}, {
		scope : 'publish_actions'
	});
}

var facebookPost = function(text) {
	FB.login(function() {
		FB.api('/me/feed', 'post', {
			message : text
		});
	}, {
		scope : 'publish_actions'
	});
}

var facebookShare = function() {
	//FB.ui({
	//	  method: 'share',
	//	  href: 'https://cientopolis.lifia.info.unlp.edu.ar/bfcrowd/',
	//	}, function(response){});
		
	FB.ui({
	  method: 'feed',
	  link: 'https://cientopolis.lifia.info.unlp.edu.ar/Colaboratorio/',
	  name: 'Colaboratorio',
	  description: 'Plataforma para la ciencia ciudadana',
	  caption: "Plataforma para la ciencia ciudadana",
	}, function(response){});		
}

function facebookFriends() {
    FB.api('/me/friends', {fields: 'name,id'}, function(response) {
        if(response.data) {
			$.each(response.data, function(index, friend) {
				var id = '#' + friend.id;
				$(id).show();
			});
		FB.api('/me', function(response) {
			var id = '#' + response.id;
			$(id).show();        
        });
		}
    });
}

$(function() {
  $('a[name="enterProject"]').bind('click', function() {
    $(this).attr('href', $(this).attr('href') + '?friends=' + facebookFriends());
  })
})	