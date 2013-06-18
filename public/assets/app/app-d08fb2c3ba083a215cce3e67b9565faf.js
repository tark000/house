
var myApp = angular.module('myApp', ["google-maps"]).
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

        $http.get('/api/adverts/' + $scope.advert.id + '/advert_images.json').success(function(data) {

            $scope.images = data;

        });

        function handleImagesLoaded(data, status) {
            $scope.images = data;
            $scope.currentImage = _.first($scope.images);
            //$scope.imageCategories = _.uniq(_.pluck($scope.images, 'category'));
        }

        $scope.fetch = function () {
            $http.get($scope.url).success($scope.handleImagesLoaded);
        }

        $scope.setCurrentImage = function (image) {
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

;
