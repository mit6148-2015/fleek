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
	//generate list of contests from map instantiated above
	for (var key in $scope.contests) {
		$scope.contestList.push(key);
	}
	//generate list of tags from a GET request
	DataService.getData('/db/list/tags')
	.then (function(data) {
		$scope.tagList = data;
	});
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
	$scope.search();
	//on submit, redirect to new path if query is not blank
	$scope.submit = function() {
		if ($scope.searchQuery != "") {
			$location.path('/search/'+$scope.searchQuery,false);
		}
		$scope.search();
	}
});