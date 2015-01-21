app.factory('AuthService', function($http, $q){
	return {
	        getAuth: function() {
	            return $http.get('/auth')
	                .then(function(response) {
	                	console.log("AuthService response: " + response.data);
	                    if (response.data === 'Authorization successful') {
	                        return true;
	                    } else {
	                        return false;
	                    }

	                }, function(response) {
	                    return false;
	            	});
	        }
	    };

});