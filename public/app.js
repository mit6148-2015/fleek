angular.module('fleekApp', ['ngRoute','ngTagsInput'])
//routing definitions
.config(['$routeProvider', '$locationProvider',
	function($routeProvider, $locationProvider) {
	    $routeProvider
		.when('/', {
	        templateUrl: '/views/splash.html',
	        controller: 'splashController'
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
        .when('/edit/:problemId', {
            templateUrl: '/views/edit.html',
            controller: 'editController'
        })
	    .when('/profile/:username', {
	        templateUrl: '/views/profile.html',
	        controller: 'profileController'
	    })
	    .when('/set', {
	        templateUrl: '/views/setlist.html',
	        controller: 'setlistController'
	    })
	    .when('/set/:setId', {
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

    //watch for keypresses
	$(document).keyup(function(event) {
		//if pressed enter or an alphabet key, broadcast event
	    if (event.which == 13 || (event.which > 64 && event.which < 91)) {
			$rootScope.$broadcast('keypress', { key: keycodes[event.which] });
			$rootScope.$apply();
		}
	});
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

//keycode map
var keycodes = {
	13: 'enter', 65: 'a', 66: 'b', 67: 'c', 68: 'd', 69: 'e', 70: 'f', 71: 'g', 72: 'h', 73: 'i', 74: 'j', 75: 'k', 76: 'l', 77: 'm', 78: 'n', 79: 'o', 80: 'p', 81: 'q', 82: 'r', 83: 's', 84: 't', 85: 'u', 86: 'v', 87: 'w', 88: 'x', 89: 'y', 90: 'z'
}