angular.module('advert.services', ['ngResource']);
angular.module('map', ["google-maps"]);

//angular.module('advert.services').config

function floatEqual (f1, f2) {
    return (Math.abs(f1 - f2) < 0.00000001);
}

angular.module('advert.services').factory('Advert', function($http){

    var Advert = function(data) {
        angular.extend(this, data);
    }

    var markers = [];
    var adverts = [];

    Advert.get = function(url) {
        return $http.get(url).success(function(response) {
            adverts = response;
            return   adverts;
        });
    };

    Advert.getMarkers = function(url){

        $http.get(url).success(function(response) {
            $adverts = response;

            angular.forEach($adverts, function(key, value){
                if(key.latitude){

                   $message = '';
                    var contentString = '<div id="content">'+

                        '</div>';
                    $message += "id="+key.id+" ,";
                    //alert("push");
                    markers.push({
                        latitude: key.latitude,
                        longitude: key.longitude,
                        click:true,

                        infoWindow: {
                            coords: {
                                latitude: 30,
                                    longitude: -89
                            },
                        show: false
                        },
                        templatedInfoWindow: {
                            coords: {
                                latitude: key.latitude,
                                longitude: key.longitude
                            },
                            show: true,
                            templateUrl: 'templates/info.html',
                            templateParameter: {
                                message: 'passed in from the opener',
                                id: key.id,
                                img:key.image
                            },
                            click: false
                        }

                        });

                }
            });

        })
        return markers;
    }

    return Advert;

})


angular.module('advert.services').factory("Task", function($resource) {
    return $resource("/api/adverts/:id", {
        id: "@id"
    }, {
        update: {
            method: "PUT"
        }
    });

});
