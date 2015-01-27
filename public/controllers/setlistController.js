//search view controller - add stuff here later
angular.module('fleekApp').controller("setlistController", function($scope,$rootScope,$location,DataService) {
	$scope.sets = {};
	$scope.currentSet;
	//generate list of sets from a GET request
	DataService.getData('/db/list/sets')
	.then (function(data) {
		for (var key in data) {
			if ($scope.currentSet == null || key < $scope.currentSet) {
				$scope.currentSet = key;
			}
			$scope.sets[key] = data[key];
		}
	});
	//set currently viewed set
	$scope.setCurrent = function(set) {
		$scope.currentSet = set;
	}
	//create links for set results
	$scope.goTo = function(sid) {
		$location.path('/set/'+sid);
	}
});