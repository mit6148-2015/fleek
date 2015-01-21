var app = angular.module('fleekApp', []);

//page controller - controls what the page displays & authentication state (need to fix the auth stuff)
app.controller("pageController", function ($scope, AuthService, $http) {
	//default page is splash
	$scope.current= "/views/splash.html";
	$scope.auth = false;
	$scope.restrictions = {
		"/views/splash.html": false, 
		"/views/login.html": false, 
		"/views/signup.html": false, 
		"/views/problem.html": true, 
		"/views/search.html": true
	};
	//function to set view (accessible from child scopes)
	$scope.setView = function(page) {
		if (!$scope.restrictions[page]) {
			console.log("set view: unrestricted, continue to " + page);
			$scope.current = page;
		}
		else {
			AuthService.getAuth()
			.then( function(data) {
				if (data) {
					console.log("data: " + data + "set view: authorized, continue to " + page);
					$scope.current = page;
					$scope.auth = true;
				}
				else {
					console.log("data: " + data + "set view: unauthorized, redirect to login");
					$scope.current = "/views/login.html";
					$scope.auth = false;
				}
			}, function(error) {
				console.log("data: " + data + "set view: unauthorized, redirect to login");
				$scope.current = "/views/login.html";
				$scope.auth = false;
			});
		}
	};

	//function to log out
	$scope.logout = function() {
		$http.get('../../logout')
        .success(function(data) {
            console.log("from server: " + data);
            $scope.auth = false;
            $scope.setView('/views/splash.html');
        });
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
    		$scope.submitted = false;
    		console.log("from server: " + data);
    		$scope.setView('/views/search.html');
    	})
    	.error(function(data) {
    		$scope.err = true;
    		$scope.submitted = false;
    		console.log("from server: " + data);
    		$scope.pass = "";
    	});
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
    	console.log("from server: " + data);
    });
    //on form submit, send POST to /signup with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	$http.post('../../signup', {username: angular.lowercase($scope.user), password: $scope.pass, gender: $scope.gen, country: $scope.ctry})
    	.success(function(data) {
    		$scope.submitted = false;
    		console.log("from server: " + data);
    		$scope.setView('/views/search.html');
    	})
    	.error(function(data) {
    		$scope.err = true;
    		$scope.submitted = false;
    		console.log("from server: " + data);
    		$scope.user = "";
	    	$scope.pass = "";
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