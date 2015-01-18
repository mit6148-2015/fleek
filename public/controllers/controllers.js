(function() {
	var app = angular.module('fleekApp', []);

	app.controller("pageController", function ($scope, $http, $location) {
		$scope.current= "splash";
		$scope.isAuthenticated = false;
		$scope.setView = function(page) {
			$scope.current = page;
		};
		$scope.setAuthentication = function(auth) {
			$scope.isAuthenticated = auth;
		}
		$scope.logout = function() {
			$http.get('../../logout')
	        .success(function(data) {
	            $scope.isAuthenticated=false;
	       		$scope.setView('splash');
	            console.log('logout successful');
	        })
		}
	});

	app.controller("loginController", function($scope,$http) {
		$scope.submitted = false;
		$scope.success = false;
		$scope.err = false;
	    $scope.submit = function(){
	    	$scope.submitted = true;
	    	$http.post('../../login', {username: angular.lowercase($scope.user), password: $scope.pass})
		    	.success(function(data) {
		    		$scope.success = true;
		    		console.log('success ' + angular.lowercase($scope.user));
		    		$scope.setView('problem');
		    		$scope.setAuthentication(true);
		    	})
		    	.error(function(data) {
		    		$scope.err = true;
		    		console.log('fail');
		    		$scope.submitted = false;
		    	})
	    }
	});

	app.controller("signupController", function($scope,$http) {
		$scope.submitted = false;
		$scope.success = false;
		$scope.err = false;
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
		    		console.log('success ' + angular.lowercase($scope.user));
		    		$scope.setView('problem');
		    		$scope.setAuthentication(true);
		    	})
		    	.error(function(data) {
		    		$scope.err = true;
		    		console.log('fail');
		    		$scope.submitted = false;
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