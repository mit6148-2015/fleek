var app = angular.module('fleekApp', []);

//page controller - controls what the page displays & authentication state
app.controller("pageController", function ($scope, AuthService) {
	$scope.current= "/views/splash.html"; //default page is splash
	$scope.auth = false; //only used for displaying buttons and stuff
	$scope.restrictions = { //map pages to restrictions
		"/views/splash.html": false, 
		"/views/login.html": false, 
		"/views/signup.html": false, 
		"/views/problem.html": true, 
		"/views/search.html": true
	};
	//function to set view (accessible from child scopes)
	$scope.setView = function(page) {
		//if page is unrestricted, continue to page
		if (!$scope.restrictions[page]) { 
			console.log(" / unrestricted, continue to " + page);
			$scope.current = page;
		}
		//if page is restricted, check authorization status
		else {
			AuthService.getAuth()
			.then( function(data) {
				if (data) {
					console.log(" / authorized, continue to " + page);
					$scope.current = page;
					$scope.auth = true;
				}
				else {
					console.log(" / unauthorized, redirect to login");
					$scope.current = "/views/login.html";
					$scope.auth = false;
				}
			}, function(error) {
				console.log(" / unauthorized, redirect to login");
				$scope.current = "/views/login.html";
				$scope.auth = false;
			});
		}
	};

	//function to log out
	$scope.logout = function() {
		AuthService.logout()
		.then( function(data) {
			if (data) {
				$scope.auth = false;
				$scope.setView('/views/splash.html');
			}
		});
	}
});

//login controller - controls login form
app.controller("loginController", function($scope, AuthService) {
	//default values
	$scope.submitted = false;
	$scope.err = false;
	//on form submit, send POST to /login with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	AuthService.login(angular.lowercase($scope.user), $scope.pass)
    	.then (function(data) {
    		if (data) {
    			$scope.submitted = false;
    			$scope.setView('/views/search.html');
    		}
    		else {
    			$scope.err = true;
    			$scope.submitted = false;
    			$scope.pass = "";
    		}
    	});
    }
});

//signup controller - controls signup form
app.controller("signupController", function($scope,AuthService,$http) {
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
    	console.log("from server: " + data);
    });
    //on form submit, send POST to /signup with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	AuthService.signup(angular.lowercase($scope.user), $scope.pass, $scope.gen, $scope.ctry)
    	.then (function(data) {
    		if (data) {
    			$scope.submitted = false;
    			$scope.setView('/views/search.html');
    		}
    		else {
    			$scope.err = true;
    			$scope.submitted = false;
    			$scope.pass = "";
    		}
    	});
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
		templateUrl: '/views/nav-bar.html'
	};
});