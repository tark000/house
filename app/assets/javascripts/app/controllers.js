
angular.module('realty').controller('ApplicationController', function($scope,$rootScope){


});

angular.module('realty').controller('IndexController', function($scope, $http, $location, $state, $stateParams, Task){

    $scope.show =false;
    $scope.adverts = {};
    //$scope.advert = {};

    //alert("current state="+$state.current.name);

    if(angular.equals($stateParams.maps,'1')){
        //alert("maps");
        $state.transitionTo('maps');
        $state.preventDefault();
    }

    $scope.$on('$locationChangeStart', function(event, newUrl) {
        //alert('new url=='+newUrl);
    });


    if ($state.current.name === 'adverts' || $state.current.name === 'index' ) {
        console.log("page size=="+$stateParams.pageSize);
        Task.query(
            {
            'operation_type':$stateParams.operation_type,
            'living':$stateParams.living,
            'category':$stateParams.category,
            'min_price':$stateParams.min_price,
            'max_price':$stateParams.max_price,
            'gender':$stateParams.gender
            //'page':$stateParams.page,
            //'pageSize':$stateParams.pageSize,
            //'from':$stateParams.from
            }, function(response) {
            return $scope.adverts = response;
        }, function(response) {});
    }

});



angular.module('realty').controller('MapInfoController', function($scope){

    $scope.templateValue = 'hello from the template itself';
})

angular.module('realty').controller('MapController', function($scope, $http, $location, $state, $stateParams, Task){

    alert("current state="+$state.current.name);

    /*google.maps.visualRefresh = true;

    var advert = new Advert();
    $scope.markers = Advert.getMarkers($location.absUrl());

    $scope.center ={
        latitude: 50.4501,
        longitude: 30.5234
    }

    $scope.zoom = 10;*/

});


angular.module('realty').controller('AdvertDetailController', function($scope, $location,  $state, $stateParams, Task){







   $scope.advert = {};

    if ($state.current.name === 'show' || $state.current.name === 'panel2' ) {
        Task.get({
            id: $stateParams['id']
        }, function(response) {
            $scope.advert = response;
            $scope.currentImage  = $scope.advert.image;

        }, function(response) {});
    }



    $scope.setCurrentImage = function (image) {



        $scope.currentImage = image.advert_image.image.image.big.url;
    };

    $scope.setCurrentImageMain = function (img) {

        $scope.currentImage = img.image;
    };

    //alert($scope.currentImage);
    //$scope.fetch();


});


