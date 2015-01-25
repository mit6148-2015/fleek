//search view controller - add stuff here later
angular.module('fleekApp').controller("searchController", function($scope,$rootScope,$routeParams,$location,DataService) {
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
	$scope.goTo = function(pid) {
		$location.path('/problem/'+pid);
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