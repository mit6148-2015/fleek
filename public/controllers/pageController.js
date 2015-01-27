//page controller - controls what the page displays & authentication state
angular.module('fleekApp').controller("pageController", function ($scope, $rootScope, $location, AuthService, DataService) {
	$rootScope.userLoggedIn = null; //only used to display buttons and stuff
	$rootScope.restrictedTemplates = ['/views/problem.html','/views/search.html','/views/set.html','/views/setlist.html']; //unauthorized users can't see these
	$rootScope.loginTemplates = ['/views/login.html','/views/signup.html']; //authorized users can't see these
	$rootScope.previousSearch = null;

	$scope.tutorial; //show helpbox
	//see if user should see tutorial
	DataService.getData('/tutorial/status')
	.then (function(data) {
		$scope.tutorial = data.tutorial;
	})

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
	//close tutorial box
	$scope.closeTutorial = function(name) {
		DataService.setTutorial(name,false)
		.then (function(data) {
			$scope.tutorial.name = false;
		})
		console.log($scope.tutorial);
	}
});