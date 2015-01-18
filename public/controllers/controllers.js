(function() {
	var app = angular.module('fleekApp', []);

	app.controller("pageController", function ($scope) {
		$scope.current= "splash";
		$scope.isAuthenticated = false;
		$scope.setView = function(page) {
			$scope.current = page;
		};
	});

	app.controller("signupController", function($scope,$http) {
		$scope.success = false;
		$scope.error = false;
		$scope.countries = null;
		$http.get('../assets/countries.json')
	        .success(function(data) {
	            $scope.countries=data;
	        })
	        .error(function(data) {
	        	$scope.countries=[{"name": "USA"}];
	        });
	    $scope.submit = function(){
	    	$http.post('../../signup', {username: $scope.user, password: $scope.pass, gender: $scope.gen, country: $scope.ctry})
	    	.success(function(data) {
	    		$scope.success = true;
	    		console.log('success ' + $scope.user + $scope.pass + $scope.gen + $scope.ctry);
	    	})
	    	.error(function(data) {
	    		$scope.error = true;
	    		console.log('fail');
	    	})
	    }
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

	app.directive("login", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/login.html'
		};
	});

	app.directive("signup", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/signup.html'
		};
	});

})();