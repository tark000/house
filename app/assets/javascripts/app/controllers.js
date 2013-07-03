
angular.module('realty').controller('IndexController', function($scope,Advert, $location){

    var advert = new Advert();
    var houses;

    houses= Advert.get($location.url());

    $scope.adverts = houses.success(function(data){ $scope.adverts = data;});
});


angular.module('realty').controller('MapInfoController', function($scope){

    $scope.templateValue = 'hello from the template itself';
})

angular.module('realty').controller('MapController', function($scope,Advert,$location,$timeout, $log){
    google.maps.visualRefresh = true;

    var advert = new Advert();
    $scope.markers = Advert.getMarkers($location.absUrl());

    $scope.center ={
        latitude: 50.4501,
        longitude: 30.5234
    }

    $scope.zoom = 10;

});


angular.module('realty').controller('AdvertDetailController', function($scope,Advert,$location){

    var advert = new Advert();

    Advert.get($location.url()).success(function(data){
        $scope.advert = data;


        $scope.currentImage = $scope.advert.image;


        $scope.setCurrentImage = function (image) {
            $scope.currentImage = image;
        };
        $scope.fetch();

    });

});