
angular.module('realty').controller('ApplicationController', function($scope){});

angular.module('realty').controller('IndexController', function($scope,$http, $location, $state, $stateParams, Task){


    $scope.adverts = {};
    $scope.advert = {};
    /*$scope.filters = [
        {name: 'living',  value: 1},
        {name: 'name', selected: false},
        {name: 'type', selected: false}
    ];*/

    //var params  = $location.search().toQueryParams();

    //alert(JSON.stringify($stateParams));

    if ($state.current.name === 'adverts') {
        Task.query({operation_type:$stateParams.operation_type}, $location.search(), function(response) {
            return $scope.adverts = response;
        }, function(response) {});
    }

    //alert(params);

    $scope.currentPage = 0;
    $scope.pageSize = 10;

    $scope.operation_type =[{
        name:"test", value:1
    }]

   //$scope.searhForm ;

    /*$scope.$watch(function (scope) {
        alert(JSON.stringify($location));
        return $location.url();
    }, function (newValue) {
        console.log("Location changed: " + newValue);
        $scope.location = newValue;
    });*/


    $scope.$watch('operation_type.value', function(oldValue, newValue){

        if (!angular.equals(oldValue, newValue)){
            console.log("operaton_type changed: " + newValue);
            console.log("Location changed: " + $location.url());
            console.log("Location changed: " + JSON.stringify($location.search()));
            $url = $location.url();
            //$location.path($url+"?operation_type=1") ;
        }


    })


    /*$scope.$watchCollection('myForm.length', function(newValues, oldValues) {

        alert(myForm.length);

        $scope.dataCount = myForm.length;
    });*/


    $scope.$on('myForm', function(event, mass){
        console.log(mass);
    })

    $scope.submit = function(){
        //alert(angular.toJson($scope.myform));
    }




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