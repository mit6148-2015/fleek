angular.module('fleekApp', ['ngRoute'])
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
})

//focus elements
.directive('focusMe', function($timeout) {
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
})

//refresh mathjax on problem change
//http://stackoverflow.com/questions/16087146/getting-mathjax-to-update-after-changes-to-angularjs-model
.directive("mathjaxBind", function() {
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
})

.directive('dynamic', function ($compile) {
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
})

//nav-bar.html
.directive("navBar", function() {
	return {
		restrict: 'E',
		templateUrl: '/views/nav-bar.html',
		controller: 'navBarController'
	};
});