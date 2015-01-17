(function() {
	var app = angular.module('fleekApp', []);

	app.controller("testController", function () {
		this.test = "hi vahid :)"
	});

	app.directive("navBar", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/nav-bar.html'
		};
	});

	app.directive("splashTop", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/splash-top.html'
		};
	});

})();