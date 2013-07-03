angular.module('advert.services', ['ngResource']);

angular.module('advert.services').factory('Advert', function($http){

    var Advert = function(data) {
        angular.extend(this, data);
    }

    var markers = [];

    Advert.get = function(url) {
        return $http.get(url).success(function(response) {
            return new Advert(response.data);
        });
    };

    Advert.getMarkers = function(url){

        $http.get(url).success(function(response) {
            $adverts = response;
            angular.forEach($adverts, function(key, value){
                if(key.latitude){
                    var $html = "<div><ul><li>q<img src='"+key.image+"'></li></ul></div>";
                    markers.push({
                        latitude: key.latitude,
                        longitude: key.longitude,
                        //icon: 'house.png',
                        infoWindow: $html
                    });
                }
            });
            //return markers;
        })
        return markers;
    }

    return Advert;

})


angular.module('map', ["google-maps"]);