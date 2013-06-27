
angular.module('realty').controller('IndexController', function($rootScope,$scope,Advert, $location){

    var advert = new Advert();

    Advert.get($location.url()).success(function(data){
        $scope.adverts = data;
    });



});


angular.module('realty').controller('MapController', function($rootScope,$scope,Advert,$location){
    google.maps.visualRefresh = true;

    var advert = new Advert();
    $scope.markers = Advert.getMarkers($location.absUrl());
    //alert($scope.markers);


    $scope.center ={
        latitude: 50.4501,
        longitude: 30.5234
    }

    $scope.zoom = 10;





});





angular.module('realty').controller('AdvertDetailController', function($scope,Adverts){

});