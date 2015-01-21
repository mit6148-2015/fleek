var app = angular.module('fleekApp', []);

//page controller - controls what the page displays & authentication state (need to fix the auth stuff)
app.controller("pageController", function ($scope, $http, $location) {
	//default page is splash
	$scope.current= "splash";
	$scope.restrictions = {"splash": false, "login": false, "signup": false, "problem": true, "search": true};
	//default authentication state is false
	$scope.isAuthenticated = false;
	// $scope.isAuthenticated = function() {
	// 	// $http.get('../../auth')
	// 	// .success(function(data) {
	// 	// 	console.log(data);
	// 	// 	return true;
	// 	// })
	// 	// .error(function(data) {
	// 	// 	console.log(data);
	// 	// 	return false;
	// 	// })
	// 	return $scope.isAuthenticated;
	// };
	//function to set authentication (accessible from child scopes) - NEEDS TO BE DONE DIFFERENTLY
	$scope.setAuthentication = function(auth) {
		$scope.isAuthenticated = auth;
	}
	//function to set view (accessible from child scopes)
	$scope.setView = function(page) {
		if (!$scope.isAuthenticated && $scope.restrictions[page]) {
			$scope.current = "login";
		}
		else {
			$scope.current = page;
		}
	};
	//function to log out - NEEDS TO BE DONE DIFFERENTLY
	$scope.logout = function() {
		$http.get('../../logout')
        .success(function(data) {
            $scope.setAuthentication(false);
       		$scope.setView('splash');
            console.log(data);
        })
	}
});

//login controller - controls login form
app.controller("loginController", function($scope,$http) {
	//default values
	$scope.submitted = false;
	$scope.err = false;
	//on form submit, send POST to /login with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	$http.post('../../login', {username: angular.lowercase($scope.user), password: $scope.pass})
	    	.success(function(data) {
	    		$scope.setAuthentication(true);
	    		$scope.setView('search');
	    		$scope.submitted = false;
	    		console.log(data);
	    		$scope.user = "";
	    		$scope.pass = "";
	    	})
	    	.error(function(data) {
	    		$scope.err = true;
	    		$scope.submitted = false;
	    		console.log(data);
	    		$scope.pass = "";
	    	})
    }
});

//signup controller - controls signup form
app.controller("signupController", function($scope,$http) {
	//default values
	$scope.submitted = false;
	$scope.err = false;
	//get country list for form
	$scope.countries = null;
	$http.get('../assets/countries.json')
        .success(function(data) {
            $scope.countries=data;
        })
        .error(function(data) {
        	$scope.countries=[{"name": "USA"}];
        	console.log(data);
        });
    //on form submit, send POST to /signup with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	$http.post('../../signup', {username: angular.lowercase($scope.user), password: $scope.pass, gender: $scope.gen, country: $scope.ctry})
	    	.success(function(data) {
	    		$scope.setAuthentication(true);
	    		$scope.submitted = false;
	    		$scope.setView('search');
	    		console.log(data);
	    		$scope.user = "";
		    	$scope.pass = "";
		    	$scope.gen = "";
		    	$scope.ctry = "";
	    	})
	    	.error(function(data) {
	    		$scope.err = true;
	    		$scope.submitted = false;
	    		console.log(data);
	    		$scope.user = "";
		    	$scope.pass = "";
	    	})
    }
});

//problem view controller - add stuff here later
app.controller("problemController", function($scope,$http) {
});

//search view controller - add stuff here later
app.controller("searchController", function($scope,$http) {
	$scope.minYear = 1950;
	$scope.maxDate = Date.now();
	$scope.amc8 = true;
	$scope.amc10 = true;
	$scope.amc12 = true;
	$scope.aime = true;
	$scope.usamo = true;
	$scope.startYear = 1950;
	$scope.endYear = 2015;
});

//focus elements
app.directive('focusMe', function($timeout) {
  return {
    link: function(scope, element, attrs) {
      scope.$watch(attrs.focusMe, function(value) {
        if(value === true) { 
            element[0].focus();
            scope[attrs.focusMe] = false;
        }
      });
    }
  };
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

//search.html
app.directive("search", function() {
	return {
		restrict: 'E',
		templateUrl: '../views/search.html'
	};
});