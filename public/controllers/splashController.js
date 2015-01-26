//search view controller - add stuff here later
angular.module('fleekApp').controller("splashController", function($scope,DataService) {
	DataService.getData('/stats/bycountry')
	.then (function(data) {
		console.log(data);
		for (var key in data) {
			if (data.hasOwnProperty(key)) {
				mapData[key].value = data[key];
				console.log(key + " : " + data[key]);
			}
		}
	})
	.then (function() {
		AmCharts.ready(loadmap());
	});
});