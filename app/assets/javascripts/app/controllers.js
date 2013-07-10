
angular.module('realty').controller('ApplicationController', function($scope,$rootScope){


});

angular.module('realty').controller('IndexController', function($scope, $http, $location, $state, $stateParams, Task){


    $scope.adverts = {};
    $scope.advert = {};

    alert("current state="+$state.current.name);

    if(angular.equals($stateParams.maps,'1')){
        alert("maps");
        $state.transitionTo('maps');
    }

    $scope.$on('$locationChangeStart', function(event, newUrl) {
        alert('new url=='+newUrl);
    });

    //$scope.pageSize = 10;

   /* if(angular.equals($stateParams.page, null)){
        $scope.currentPage = 0;
        $stateParams.page = 0;
    }else{
        $scope.currentPage = $stateParams.page ;
    }*/



    //alert('$stateParams.page=='+$stateParams.page+ "$stateParams.pageSize==" +$stateParams.pageSize);

    //alert($stateParams.page * $stateParams.pageSize);

   /* if(angular.equals($stateParams.page * $stateParams.pageSize, NaN) || angular.equals($stateParams.page * $stateParams.pageSize, 0)){
        $stateParams.from = 0;
        $scope.currentPage = 0;
        $stateParams.pageSize = 10;
        $stateParams.page = 0;
    }else{
        $stateParams.from = $stateParams.page * $stateParams.pageSize;
        $scope.page = $stateParams.page;
    }
*/





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

    if ($state.current.name === 'show') {
        Task.get({
            id: $stateParams['id']
        }, function(response) {
            return $scope.advert = response;
        }, function(response) {});
    }

    $scope.currentImage = $scope.advert.image;

});