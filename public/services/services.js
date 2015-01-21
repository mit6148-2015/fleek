app.factory('AuthService', function($http, $q){
	return {
	        getAuth: function() {
	            return $http.get('/auth')
	                .then(function(response) {
	                	console.log("\tgetAuth response: " + response.data);
	                    if (response.data === 'Authorization successful') {
	                        return true;
	                    } 
	                    else {
	                        return false;
	                    }

	                }, function(response) {
	                    return false;
	            	});
	        },
	        login: function(user,pass) {
	        	return $http.post('/login', {username: user, password: pass})
	        		.then(function(response) {
	        			console.log("\tlogin response: " + response.data);
	        			if (response.data === 'Login successful') {
	        				return true;
	        			}
	        			else {
	        				return false;
	        			}
	        		}, function(response) {
	        			return false;
	        		});
	        },
	        logout: function() {
	        	return $http.get('/logout')
	        		.then(function(response) {
	        			console.log("\tlogout response: " + response.data);
	        			if (response.data === 'Logout successful') {
	        				return true;
	        			}
	        			else {
	        				return false;
	        			}
	        		}, function(response) {
	        			return false;
	        		});
	        },
	        signup: function(user,pass,gen,ctry) {
	        	return $http.post('/signup', {username: user, password: pass, gender: gen, country: ctry})
	        		.then(function(response) {
	        			console.log("\tsignup response: " + response.data);
	        			if (response.data === 'Signup successful') {
	        				return true;
	        			}
	        			else {
	        				return false;
	        			}
	        		}, function(response) {
	        			return false;
	        		});
	        }
	    };

});

app.factory('DataService', function($http, $q){
	return {
	        getData: function(path) {
	            return $http.get(path)
	                .then(function(response) {
	                	console.log("\tgetData response ");
	                    if (typeof response.data === 'object') {
	                        return response.data;
	                    } 
	                    else {
	                        return $q.reject(response.data);
	                    }

	                }, function(response) {
	                    return $q.reject(response.data);
	            	});
	        },
	        search: function(text,contests,syear,eyear) {
	        	return $http.get('/search', { params: {queryText: text, contest: contests, startYear: syear, endYear: eyear}})
	        		.then(function(response) {
	        			console.log("\tsearch response: " + response.data);
	        			if (typeof response.data === 'object') {
	        				return response.data;
	        			}
	        			else {
	        				return $q.reject(response.data);
	        			}
	        		}, function(response) {
	        			return $q.reject(response.data);
	        		});
	        }
	    };

});

