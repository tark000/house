/*


var myApp = angular.module('myApp', ["google-maps",'angular-momentum-scroll']);


myApp.config(function ($locationProvider) {
    $locationProvider.html5Mode(false).hashPrefix('!');
    //$locationProvider.html5Mode(true);
});


myApp.run(function ($rootScope, $location) {
    //$rootScope.show = 'false';
    $location.path("usage");
    $rootScope.center = {
        latitude: 50.4501,
        longitude: 30.5234
    };

    $rootScope.fit = true;
    $rootScope.zoom = 10;
    $rootScope.markers = [];
    //$rootScope.windows = [];
    google.maps.visualRefresh = true;

});

*/
/*angular.module('myApp').factory('advertService', ['$http', function($http) {
    return new advertService($http);
}]);*//*


angular.module('myApp').service('advertService', function () {
    return function($http){
        $http.get($url).success(function(response) {
            $scope.adverts = response;

        });

    }
});

angular.module('myApp').factory('advertModel', function (advertService) {
    return new advertModel(advertService);
});

*/
/*

angular.module('myApp').factory('advertModel', ['advertService', function(advertService) {
    return new advertModel(advertService);
}]);
*//*



angular.module('myApp').controller('MapController', function($scope, advertModel){


      $scope.adverts = advertModel($location.absUrl());


    */
/*$scope.init = function(){
        return function($http){
            $http.get($location.absUrl()).success(function(response) {
                $scope.adverts = response;

            });
        }

    }
*//*


     alert($scope.adverts.length);


    */
/*$scope.init = function(){

        alert("aaa");
            var $i =0;
            alert($scope.adverts.length);
            angular.forEach($adverts, function(key, value){

                alert($scope.adverts.length);
                alert(key.latitude);
                if(key.latitude){
                    var $html = "<div><ul><li>q<img src='"+key.image.image.medium.url+"'></li></ul></div>";

                    $scope.markers.push({
                        latitude: key.latitude,
                        longitude: key.longitude,
                        //icon: 'house.png',
                        infoWindow: $html


                    });
                    $i = $i+1;
                }

            })







    }

*//*




})

angular.module('myApp').controller('AdvertDetailController', function($scope,$location,$http){

    $scope.advert = "";
    $scope.currentImage = {};
    $scope.markers = [];
    $scope.zoom = 12;
    $scope.fit = true;
    $scope.refresh = true;

    $http.get($location.absUrl()).success(function(response) {
        $scope.advert = response;

        $scope.center = {
            latitude:  $scope.advert.latitude,
            longitude: $scope.advert.longitude
        };


        $scope.markers.push({
            latitude: $scope.advert.latitude,
            longitude: $scope.advert.longitude

        });

        $scope.currentImage = $scope.advert.image;
        $scope.setCurrentImage = function (image) {
            //alert(JSON.stringify(image));
            $scope.currentImage = image;
        };

        $scope.fetch();




    });

})

angular.module('myApp').controller('IndexController', function($scope,$location, $http){

    $http.get($location.absUrl()).success(function(response) {
        $scope.adverts = response;
    });

})

*/
/*

function IndexController ($scope, $timeout, $log,$location, $http) {

    //$scope.markers = [];
    //google.maps.visualRefresh = true;



    $http.get($location.absUrl()).success(function(response) {
        $scope.adverts = response;
    });




    $scope.$watch("show", function (newValue, oldValue) {

        if(newValue === true){

            //$scope.refresh();
           google.maps.Refresh = true;

            //$rootScope.zoom = 10;

           // alert($scope.adverts.length);
            var $i =0;
            angular.forEach($scope.adverts, function(key, value){

                if(key.latitude){
                    var $html = "<div><ul><li>q<img src='"+key.image.image.medium.url+"'></li></ul></div>";

                    $scope.markers.push({
                        latitude: key.latitude,
                        longitude: key.longitude,
                        //icon: 'house.png',
                        infoWindow: $html


                    });
                    $i = $i+1;
                }

            });
            //alert("count="+$i);

        }


    });

    $scope.eventsProperty = {



        click: function (mapModel, eventName, originalEventArgs) {
            // 'this' is the directive's scope
            $log.log("user defined event on map directive with scope", this);
            $log.log("user defined event: " + eventName, mapModel, originalEventArgs);
        }
    }


}

*//*

