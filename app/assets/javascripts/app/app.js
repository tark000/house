
var myApp = angular.module('myApp', ["google-maps",'angular-momentum-scroll']).
factory('Advert', function($http) {
    return{
        getAdverts : function($url) {
            return $http({
                url: $url,
                method: 'GET'
            })
        }
    }
});

function AdvertDetailController($scope,$location,$http, Advert ){
    $scope.advert = "";
    $scope.currentImage = {};
    Advert.getAdverts($location.url()).success(function(data){

        $scope.advert=data;
        $scope.currentImage = $scope.advert.image;

        //for angular-carousel
        //scope.carouselBufferSize = $scope.advert.images.length;

        $scope.setCurrentImage = function (image) {
            //alert(JSON.stringify(image));
            $scope.currentImage = image;
        };

        $scope.fetch();

    })

}

function IndexController ($scope, $timeout, $log,$location, $http, Advert) {

    $scope.adverts = [];
    google.maps.visualRefresh = true;

    $scope.markersProperty = [];
    Advert.getAdverts($location.url()).success(function(data){
       $scope.adverts=data;


        angular.forEach($scope.adverts, function(key, value){
           $scope.markersProperty.push({
               latitude: parseFloat(key.latitude),
               longitude: parseFloat(key.longitude)

           });

       })


        $scope.position = {
            coords: {
                latitude: $scope.adverts.slice(-1)[0].latitude,
                longitude: $scope.adverts.slice(-1)[0].longitude
            }
        }


    });
    angular.extend($scope, {

        //default center
        position: {
            coords: {
                latitude: 50.4501, //$scope.adverts.slice(-1)[0].latitude,
                longitude: 30.5234 //$scope.adverts.slice(-1)[0].longitude
            }
        },

        zoomProperty: 12

    });

}

