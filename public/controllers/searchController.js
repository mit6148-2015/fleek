//search view controller - add stuff here later
angular.module('fleekApp').controller("searchController", function($scope,$rootScope,$q,$routeParams,$location,DataService) {
	$scope.searchQuery = $routeParams.searchQuery; //set search query to URL parameter
	$rootScope.searchHistory = $scope.searchQuery; //set search history to last recorded search
	$scope.predicate = 'meta.setPattern'; //key to sort table by
	$scope.tutorial; //show helpbox
	//data for form validation
	$scope.tagList = [];
	$scope.minYear = 1950;
	$scope.maxDate = Date.now();
	$scope.contests = {};
	$scope.contestList = [];
	$scope.startYear = 1950;
	$scope.endYear = 2015;
	//holds search results
	$scope.results;
	//see if user should see tutorial
	DataService.getData('/tutorial/status')
	.then (function(data) {
		$scope.tutorial = data.tutorial.search;
	})
	//generate list of contests from a GET request
	DataService.getData('/db/list/sets')
	.then (function(data) {
		for (var key in data) {
			$scope.contests[key] = true;
		}
	})
	.then (function() {
		//generate list of contests from map populated above
		for (var key in $scope.contests) {
			$scope.contestList.push(key);
		}
	})
	.then (function () {
		$scope.search();
	});
	//generate list of tags from a GET request
	DataService.getData('/db/list/tags')
	.then (function(data) {
		$scope.tagList = data;
	});
	//create links for search results
	$scope.closeTutorial = function() {
		DataService.setTutorial('search',false)
		.then (function(data) {
			$scope.tutorial = false;
		})
	}
	//return promise with tag list for autocomplete
	$scope.loadItems = function(query) {
		matchingTags = [];
		for (i = 0; i < $scope.tagList.length; i++) {
			if ($scope.tagList[i]['text'].indexOf(angular.lowercase(query)) > -1) {
				matchingTags.push($scope.tagList[i]);
			}
		}
		var deferred = $q.defer();
	    deferred.resolve(matchingTags);
	    return deferred.promise;
	}
	//create links for search results
	$scope.goTo = function(pid) {
		$location.path('/problem/'+pid);
	}
	//on page load, send GET request for search results
	$scope.search = function(){
		var list = []
		var tagsQuery = []
		//add contests to list
		for (var key in $scope.contests) {
			if ($scope.contests.hasOwnProperty(key)) {
				if ($scope.contests[key]==true) {
					list.push(key);
				}
			}
		}
		//add tags to list
		for (var key in $scope.tags) {
			tagsQuery.push($scope.tags[key]['text']);
		}
		//if either query or tags list is blank, send a space as the request
		if ($scope.searchQuery == null || $scope.searchQuery == "") {
    		$scope.searchQuery = " ";
    	}
    	if (tagsQuery.length < 1) {
    		tagsQuery = " ";
    	}
    	//if neither query nor tags list is blank, send POST request for search results
    	if ($scope.searchQuery != " " || tagsQuery != " ") { 
			console.log('searching text "'+$scope.searchQuery+'" & tags "' + tagsQuery + '" & contests "' + list+'"');
			DataService.search($scope.searchQuery,tagsQuery,list,$scope.startYear, $scope.endYear)
			.then (function(data) {
				$scope.results = data;
			});
		}
		//if search query is a space, revert it to null
		if ($scope.searchQuery == " ") {
			$scope.searchQuery = "";
		}
	}
	//on submit, redirect to new path if query is not blank
	$scope.submit = function() {
		if ($scope.searchQuery != "" || $routeParams.searchQuery != null) {
			$location.path('/search/'+$scope.searchQuery,false);
		}
		$scope.search();
	}
	//listen for keypress
    $scope.$on('keypress', function(event, args) {
        //focus on input
        if (args.key == "enter") {
            $('#focus-input').focus();
        }
    });
});