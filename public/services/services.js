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