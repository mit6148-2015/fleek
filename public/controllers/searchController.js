//search view controller - add stuff here later
angular.module('fleekApp').controller("searchController", function($scope,$rootScope,$q,$routeParams,$location,DataService) {
	$scope.searchQuery = $routeParams.searchQuery;
	$rootScope.searchHistory = $scope.searchQuery;
	$scope.predicate = 'meta.setPattern';
	//data for form validation
	$scope.tagList = [];
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
	//generate list of tags
	DataService.getData('/db/list/tags')
	.then (function(data) {
		$scope.tagList = data;
	});
	//return promise with tag list
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
	$scope.goTo = function(pid) {
		$location.path('/problem/'+pid);
	}
	//on page load, send GET request for search results
	$scope.search = function(){
		var list = []
		var tagsQuery = []
		for (var key in $scope.contests) {
			if ($scope.contests.hasOwnProperty(key)) {
				if ($scope.contests[key]==true) {
					list.push(key);
				}
			}
		}
		for (var key in $scope.tags) {
			tagsQuery.push($scope.tags[key]['text']);
		}
		if ($scope.searchQuery == null) {
    		$scope.searchQuery = " ";
    	}
    	if (tagsQuery.length < 1) {
    		tagsQuery = " ";
    	}
		console.log('searching tags ' + tagsQuery + ' & contests ' + list);
		DataService.search($scope.searchQuery,tagsQuery,list,$scope.startYear, $scope.endYear)
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