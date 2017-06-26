/**
 * submit admin login
 */
function submitLogin() {

	var siteurl = document.location.origin;
	var url = siteurl + "/recal/admin/checklogin";
	var loginid = document.getElementById("loginid").value;
	var password = document.getElementById("password").value;
	var rememberme = document.getElementById("rememberMe");

	document.getElementById("msg").style.display = '';

	// set loading bar

	document.getElementById("msg").innerHTML = '<img src=/recal/resources/adminassets/images/loadingbar.gif >';

	$
			.ajax({
				type : "POST",
				url : url,
				data : {
					'loginid' : loginid,
					'password' : password
				},
				success : function(data) {

					var tmpResult = data.split(":");

					if (tmpResult[0] == "success") {

						// set cookies
						Cookies.set('uid', tmpResult[1]);
						Cookies.set('keyId', tmpResult[2]);
						Cookies.set('userId', loginid);
						Cookies.set('userType', 'admin');
						Cookies.set('loginType', 'api');

						// check if remember me checked
						if (rememberme.checked) {
							// set username and password
							Cookies.set('myuserId', loginid, {
								expires : 365
							});
							Cookies.set('mypassword', password, {
								expires : 365
							});

						} else {
							// clear username and password cookies
							Cookies.remove('myuserId');
							Cookies.remove('mypassword');

						}

						// redirect on dashbaord
						if (loginid == "sebadmin") {
							window.location.href = siteurl+"/recal/admin/dashboard";
						} else {
							window.location.href = siteurl+"/recal/borrower/dashboard";
						}
					} else {
						document.getElementById("msg").innerHTML = "Invalid Login details.";
					}

				}
			})
}

/**
 * Recent loan applications
 */
function getRecentApplicatons() {
	var siteurl = document.location.origin;
	var url = siteurl + "/recal/admin/recentapplications";
	var uid = Cookies.get('uid');
	var keyId = Cookies.get('keyId');

	$.ajax({
		type : "POST",
		url : url,
		data : {
			'uid' : uid,
			'keyId' : keyId
		},
		success : function(data) {
			document.getElementById("tblRecentApps").innerHTML = data.trim();
		}
	})
}

/**
 * loan summary
 */
function getLoanSummary() {
	var siteurl = document.location.origin;
	var url = siteurl + "/recal/admin/loansummary";

	var uid = Cookies.get('uid');
	var keyId = Cookies.get('keyId');

	$.ajax({
		type : "POST",
		url : url,
		data : {
			'uid' : uid,
			'keyId' : keyId
		},
		success : function(data) {
			document.getElementById("tblLoanApps").innerHTML = data.trim();
		}
	})
}

/**
 * Check status
 * 
 * @param status
 */
function showApplicationsByStatus(status) {

	if (status == "Approved (Pending verification)")
		status = "Approved_Pending_verification";

	if (status == "Pending For Authorizer")
		status = "Pending_For_Authorizer";

	if (status == "Pending For Borrower")
		status = "Pending_For_Borrower";

	var siteurl = document.location.origin;
	var url = siteurl + "/recal/admin/applicationslist?searchval=" + status;

	window.location.href = url;
}

/**
 * remove user cookies
 */
function siteLogOut() {

	if (Cookies.get('loginType') == "fb") {
		FBlogout();
	}

	// remove cookies
	Cookies.remove('userId');
	Cookies.remove('userType');
	Cookies.remove('loginType');
	Cookies.remove('uid');
	Cookies.remove('keyId');

	// redirect to login page
	var siteurl = document.location.origin;
	var url = siteurl + "/recal/admin/login";
	window.location.href = url;
}

/**
 * check if user not logged in
 */
function isUserNotLoggedIn() {
	// check user id
	var userId = Cookies.get('userId');
	if (userId == null) {
		// redirect to login page
		var siteurl = document.location.origin;
		var url = siteurl + "/admin/login";
		window.location.href = url;

	}
}

/**
 * check if user logged in
 */
function isUserLoggedIn() {
	// check user id
	var userId = Cookies.get('userId');
	if (userId != null) {
		// redirect to login page
		var siteurl = document.location.origin;
		var url = siteurl + "/recal/admin/dashboard";
		window.location.href = url;

	}
}

/**
 * *********************** Google plus api
 * **************************************************
 */
function GPlogout() {
	gapi.auth.signOut();
	// location.reload();
}
function GPlogin() {
	var myParams = {
		'clientid' : '840585873809-pnd4r9krcbg63bfl2i47d7vspioqd3mh.apps.googleusercontent.com',
		'cookiepolicy' : 'single_host_origin',
		'callback' : 'GPloginCallback',
		'approvalprompt' : 'force',
		'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'
	};
	gapi.auth.signIn(myParams);
}

function GPloginCallback(result) {
	if (result['status']['signed_in']) {
		var request = gapi.client.plus.people.get({
			'userId' : 'me'
		});
		request.execute(function(resp) {
			var email = '';
			if (resp['emails']) {
				for (i = 0; i < resp['emails'].length; i++) {
					if (resp['emails'][i]['type'] == 'account') {
						email = resp['emails'][i]['value'];
					}
				}
			}

			// set cookies
			Cookies.set('userId', email);
			Cookies.set('userType', 'admin');
			Cookies.set('loginType', 'gp');

			var siteurl = document.location.origin;

			// redirect on dashboard
			window.location.href = siteurl + "/recal/admin/dashboard";

		});

	}

}
function GPonLoadCallback() {
	gapi.client.setApiKey('AIzaSyCf89QIraEscGUPmUL3J6DHVNNH-q4Cppo');
	gapi.client.load('plus', 'v1', function() {
	});
}

/**
 * ************************* End of google plus api
 * ******************************************************
 */

/**
 * **************************** Facebook login api
 * *******************************************************
 */

window.fbAsyncInit = function() {
	FB.init({
		appId : '1620697151560152',
		oauth : true,
		status : true, // check login status
		cookie : true, // enable cookies to allow the server to access the
		// session
		xfbml : true
	// parse XFBML
	});

};

function fb_login() {
	FB.login(function(response) {

		if (response.authResponse) {
			console.log('Welcome!  Fetching your information.... ');
			// console.log(response); // dump complete info
			access_token = response.authResponse.accessToken; // get access
			// token
			user_id = response.authResponse.userID; // get FB UID

			FB.api('/me', function(response) {

				user_email = response.email; // get user email

				// set cookies
				Cookies.set('userId', user_email);
				Cookies.set('userType', 'admin');
				Cookies.set('loginType', 'fb');

				var siteurl = document.location.origin;

				// redirect on dashboard
				window.location.href = siteurl + "/recal/admin/dashboard";

			});

		} else {
			// user hit cancel button
			console.log('User cancelled login or did not fully authorize.');

		}
	}, {
		scope : 'publish_actions,email'
	});
}
(function() {
	var e = document.createElement('script');
	e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
	e.async = true;
	// document.getElementById('fb-root').appendChild(e);
	$("head").append(e);
}());

function FBlogout() {
	FB.logout(function(response) {
		// user is now logged out
	});
}

/**
 * ************************** Facbook login api end
 * ******************************************
 */
