//page controller - controls what the page displays & authentication state
angular.module('fleekApp').controller("pageController", function ($scope, $rootScope, $location, AuthService, DataService) {
	$rootScope.userLoggedIn = null; //only used to display buttons and stuff
	$rootScope.restrictedTemplates = ['/views/problem.html','/views/search.html','/views/set.html','/views/setlist.html']; //unauthorized users can't see these
	$rootScope.loginTemplates = ['/views/login.html','/views/signup.html']; //authorized users can't see these
	$rootScope.previousSearch = null;
	$rootScope.tutorial = {}; //show help boxes


	//function to log out
	$scope.logout = function() {
		AuthService.logout()
		.then( function(data) {
			if (data) {
				$rootScope.userLoggedIn = null;
				$location.path('/');
			}
		});
	}
});