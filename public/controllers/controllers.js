(function() {
	var app = angular.module('fleekApp', []);

	app.controller("pageController", function ($scope, $location) {
		$scope.current= "splash";
		$scope.isAuthenticated = false;
		$scope.setView = function(page) {
			$scope.current = page;
		};
	});

	app.controller("loginController", function($scope,$http) {
		$scope.submitted = false;
		$scope.success = false;
		$scope.error = false;
	    $scope.submit = function(){
	    	$scope.submitted = true;
	    	$http.post('../../login', {username: angular.lowercase($scope.user), password: $scope.pass})
	    	.success(function(data) {
	    		$scope.success = true;
	    		console.log('success ' + angular.lowercase($scope.user) + $scope.pass);
	    	})
	    	.error(function(data) {
	    		$scope.error = true;
	    		console.log('fail');
	    	})
	    }
	});

	app.controller("signupController", function($scope,$http) {
		$scope.submitted = false;
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
	    	$scope.submitted = true;
	    	$http.post('../../signup', {username: angular.lowercase($scope.user), password: $scope.pass, gender: $scope.gen, country: $scope.ctry})
	    	.success(function(data) {
	    		$scope.success = true;
	    		console.log('success ' + angular.lowercase($scope.user) + $scope.pass + $scope.gen + $scope.ctry);
	    	})
	    	.error(function(data) {
	    		$scope.error = true;
	    		console.log('fail');
	    	})
	    }
	});

	app.controller("problemController", function($scope,$http) {
	});

	//nav-bar.html
	app.directive("navBar", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/nav-bar.html'
		};
	});

	//splash-top.html
	app.directive("splashTop", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/splash-top.html'
		};
	});

	//login.html
	app.directive("login", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/login.html'
		};
	});

	//signup.html
	app.directive("signup", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/signup.html'
		};
	});

	//problem.html
	app.directive("problem", function() {
		return {
			restrict: 'E',
			templateUrl: '../views/problem.html'
		};
	});

})();