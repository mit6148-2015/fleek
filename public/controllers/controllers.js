var app = angular.module('fleekApp', ['ngRoute'])
//routing definitions
.config(['$routeProvider', '$locationProvider',
	function($routeProvider, $locationProvider) {
	    $routeProvider
		.when('/', {
	        templateUrl: '/views/splash.html'
	    })
	    .when('/login', {
	        templateUrl: '/views/login.html',
	        controller: 'loginController'
	    })
	    .when('/signup', {
	        templateUrl: '/views/signup.html',
	        controller: 'signupController'
	    })
	    .when('/search', {
	        templateUrl: '/views/search.html',
	        controller: 'searchController'
	    })
	    .when('/search/:searchQuery', {
	        templateUrl: '/views/search.html',
	        controller: 'searchController'
	    })
	    .when('/problem/:problemId', {
	        templateUrl: '/views/problem.html',
	        controller: 'problemController'
	    })
	    .when('/profile/:userId', {
	        templateUrl: '/views/profile.html',
	        controller: 'profileController'
	    })
	    .when('/set', {
	        templateUrl: '/views/setlist.html',
	        controller: 'setlistController'
	    })
	    .when('/set/:userId', {
	        templateUrl: '/views/set.html',
	        controller: 'setController'
	    })
	    .when('/about', {
	        templateUrl: '/views/about.html'
	    })
	    .otherwise({
	        redirectTo: '/'
	    });
    //remove # from URL
    $locationProvider.html5Mode(true);
}])

.run(function($route, $rootScope, $location, $routeParams, AuthService) {
    //watch for route changes and redirect accordingly
    $rootScope.$on( "$routeChangeStart", function(event, next, current) {
    	//set current variable to template (used in showing/hiding elements)
    	$rootScope.current = next.templateUrl;
    	//check to see if user is authenticated
    	AuthService.getAuth()
		.then( function(data) {
			//if user is logged in
			if (data) {
				$rootScope.userLoggedIn = data;
				//if the user is trying to access signup or login, redirect to root page
				if ($rootScope.loginTemplates.indexOf(next.templateUrl) >= 0) {
					$location.path("/");
				}
			}
			//if user is not logged in
			else {
				//if the user is trying to access search or problem, redirect to login page
				if ($rootScope.restrictedTemplates.indexOf(next.templateUrl) >= 0) {
					$location.path("/login");
				}
			}
			// console.log('logged in user: '+ $rootScope.userLoggedIn + ', current template: ' + $rootScope.current);
		});
	});
});

//page controller - controls what the page displays & authentication state
app.controller("pageController", function ($scope, $rootScope, $location, AuthService) {
	$rootScope.userLoggedIn = null; //only used to display buttons and stuff
	$rootScope.restrictedTemplates = ['/views/problem.html','/views/search.html']; //unauthorized users can't see these
	$rootScope.loginTemplates = ['/views/login.html','/views/signup.html']; //authorized users can't see these
	$rootScope.previousSearch = null;

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

//nav bar controller - controls navbar collapse
app.controller("navBarController", function ($scope) {
	$scope.isCollapsed = true;
});


//login controller - controls login form
app.controller("loginController", function($scope, $rootScope, $location, AuthService) {
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
    			$location.path('/search');
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
app.controller("signupController", function($scope,$rootScope,$location,AuthService,DataService) {
	//default values
	$scope.submitted = false;
	$scope.err = false;
	//get country list for form
	$scope.countries = null;
	DataService.getData('/assets/countries.json')
	.then (function(data) {
		$scope.countries = data;
	});
    //on form submit, send POST to /signup with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	AuthService.signup(angular.lowercase($scope.user), $scope.pass, $scope.gen, $scope.ctry)
    	.then (function(data) {
    		if (data) {
    			$scope.submitted = false;
    			$location.path('/search');
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
app.controller("problemController", function($scope,$routeParams,DataService) {
	$scope.problem = null;
	$scope.choices = {};
	$scope.correct = false;
	$scope.incorrect = false;
	//send a GET request for the problem data
	DataService.getProblem($routeParams.problemId)
	.then (function(data) {
		$scope.problem = data;
		//if the problem is multiple choice, populate choices dictionary
		if ($scope.problem.meta.response == "multipleChoice") {
			for (i = 0; i < $scope.problem.response.numChoices; i++) {
				$scope.choices[$scope.problem.response.keys[i]] = $scope.problem.response.choices[i];
			}
		}
	});
	//validate integer responses
	$scope.intValidate = function() {
		if ($scope.intResponse == parseInt($scope.problem.response.answer)) {
			$scope.incorrect = false;
			$scope.correct = true;
			console.log("answer correct!");
		}
		else {
			$scope.correct = false;
			$scope.incorrect = true;
			console.log("answer incorrect");
		}
	}
	//validate multiple choice responses
	$scope.multiValidate = function(choice) {
		if (choice == $scope.problem.response.correctIndex) {
			$scope.incorrect = false;
			$scope.correct = true;
			console.log("answer correct!");
		}
		else {
			$scope.correct = false;
			$scope.incorrect = true;
			console.log("answer incorrect");
		}
	}
});

//search view controller - add stuff here later
app.controller("searchController", function($scope,$rootScope,$routeParams,$location,DataService) {
	$scope.searchQuery = $routeParams.searchQuery;
	$rootScope.searchHistory = $scope.searchQuery;
	$scope.predicate = 'meta.setPattern';
	//data for form validation
	$scope.minYear = 1950;
	$scope.maxDate = Date.now();
	$scope.contests = {'AMC 8': true, 'AMC 10': true, 'AMC 12': true, 'AIME': true, 'USAMO': true, 'USAJMO': true, 'Putnam': true, 'Science Bowl': true};
	$scope.contestList = [];
	$scope.startYear = 1950;
	$scope.endYear = 2015;
	//holds search results
	$scope.results;
	//generate list of contests from map
	for (var key in $scope.contests) {
		$scope.contestList.push(key);
	}
	//on page load, send GET request for search results
	$scope.search = function(){
		var list = []
		for (var key in $scope.contests) {
			if ($scope.contests.hasOwnProperty(key)) {
				if ($scope.contests[key]==true) {
					list.push(key);
				}
			}
		}
		console.log('searching contests ' + list);
		DataService.search($scope.searchQuery,list,$scope.startYear, $scope.endYear)
		.then (function(data) {
			$scope.results = data;
		});
	}
	$scope.search();
	//on submit, redirect to new path
	$scope.submit = function() {
		$location.path('/search/'+$scope.searchQuery,false);
		$scope.search();
	}
});

//profile view controller - add stuff here later
app.controller("profileController", function($scope,$routeParams,$location) {
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

//refresh mathjax on problem change
//http://stackoverflow.com/questions/16087146/getting-mathjax-to-update-after-changes-to-angularjs-model
app.directive("mathjaxBind", function() {
    return {
        restrict: "A",
        scope:{
            text: "@mathjaxBind"
        },
        controller: ["$scope", "$element", "$attrs", function($scope, $element, $attrs) {
            $scope.$watch('text', function(value) {
                var $script = angular.element("<script type='math/tex'>")
                    .html(value == undefined ? "" : value);
                $element.html("");
                $element.append($script);
                MathJax.Hub.Queue(["Reprocess", MathJax.Hub, $element[0]]);
            });
        }]
    };
});
app.directive('dynamic', function ($compile) {
	return {
		restrict: 'A',
		replace: true,
		link: function (scope, ele, attrs) {
			scope.$watch(attrs.dynamic, function(html) {
				if (html != null) {
					html = html.replace(/\$\$([^$]+)\$\$/g, "<span class=\"blue\" mathjax-bind=\"$1\"></span>");
					html = html.replace(/\$([^$]+)\$/g, "<span class=\"red\" mathjax-bind=\"$1\"></span>");                
					ele.html(html);
					$compile(ele.contents())(scope);
				}
			});
		}
	};
});

//nav-bar.html
app.directive("navBar", function() {
	return {
		restrict: 'E',
		templateUrl: '/views/nav-bar.html',
		controller: 'navBarController'
	};
});