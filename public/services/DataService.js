angular.module('fleekApp').factory('DataService', function($http, $q){
	return {
	        getData: function(path) {
	            return $http.get(path)
	                .then(function(response) {
	                    if (typeof response.data === 'object') {
	                    	console.log("\tgetData response " + response.data.length);
	                        return response.data;
	                    } 
	                    else {
	                        return $q.reject(response.data);
	                    }

	                }, function(response) {
	                    return $q.reject(response.data);
	            	}
	            );
	        },
	        search: function(text,conts,syear,eyear) {
	        	return $http.get('/db/query/problems', { params: {queryText: text, contests: conts, startYear: syear, endYear: eyear}})
	        		.then(function(response) {
	        			if (typeof response.data === 'object') {
							console.log("\tSearch response " + response.data.length);
	        				return response.data;
	        			}
	        			else {
	        				return $q.reject(response.data);
	        			}
	        		}, function(response) {
	        			return $q.reject(response.data);
	        		}
	        	);
	        },
	        getProblem: function(problemId) {
	        	return $http.get('/db/problem', { params: {id: problemId}})
	        		.then(function(response) {
	        			if (typeof response.data === 'object') {
							console.log("\tSearch response " + response.data._id);
	        				return response.data;
	        			}
	        			else {
	        				return $q.reject(response.data);
	        			}
	        		}, function(response) {
	        			return $q.reject(response.data);
	        		}
	        	);
	        },
	    };

});