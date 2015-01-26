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
	        	return $http.get('/db/query/problems', { params: {q: text, setPatterns: conts, startYear: syear, endYear: eyear}})
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
	        sendSuccess : function(problemId) {
	        	return $http.post('/stats/solved', { params: {id: problemId}})
	        		.then(function(response) {
	        			if (typeof response.data === 'string') {
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
	        reportProblem: function(problemId) {
	        	return $http.post('/report', { params: {id: problemId}})
	        		.then(function(response) {
	        			if (typeof response.data === 'string') {
							console.log("\tProblem reported " + response.data);
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