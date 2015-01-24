app.factory('AuthService', function($http, $q){
	return {
	        getAuth: function() {
	            return $http.get('/auth')
	                .then(function(response) {
	                	console.log("\tgetAuth response: " + response.data);
	                    if (typeof response.data === 'string') {
	                        return response.data;
	                    } 
	                    else {
	                        return null;
	                    }

	                }, function(response) {
	                    return null;
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
	                    if (typeof response.data === 'object') {
	                    	console.log("\tgetData response " + response.data.length);
	                        return response.data;
	                    } 
	                    else {
	                        return $q.reject(response.data);
	                    }

	                }, function(response) {
	                    return $q.reject(response.data);
	            	});
	        },
	        search: function(text,conts,syear,eyear) {
	        	return $http.get('/search', { params: {queryText: text, contests: conts, startYear: syear, endYear: eyear}})
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
	        		});
	        }
	    };

});

app.factory('ProblemService', function(){
	var Problem = {
		contest: "AMC 8",
		year: "2015",
		number: "1",
		answerType: "multipleChoice",
		sources: {name: "Made Up", url: ""},
		statement: "This is a sample problem",
		response: "42"
	}
	return {
		getProblem: function() {
			return Problem;
		},
		setProblem: function(con, yr, num, typ, srcs, stmt, ans) {
			Problem.contest = con;
			Problem.year = yr;
			Problem.number = num;
			Problem.answerType = typ;
			Problem.sources = srcs;
			Problem.statement = stmt;
			Problem.response = ans;
			console.log('problem changed');
		}
	}
});