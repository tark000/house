
angular.module('realty').controller('ApplicationController', function($scope,$rootScope){


});

var IndexController = angular.module('realty').controller('IndexController', function($scope, $http, $location, $state, $stateParams, Task, $q){



    var promises = [];
    var vips = [];

     function Load(){
         var deferred = $q.defer();
         setTimeout(function() {
             $scope.$apply(function() {
                 Task.query({},
                     function (resp) {
                         deferred.resolve(resp);
                     }
                 );
             })
         }, 100);
         return deferred.promise;
     }




    var promise = Load();
    promise.then(function(resp) {
            $scope.adverts = resp;


            angular.forEach($scope.adverts, function(item,key){
                if(item.price>'200'){
                    var vip_promise = waitTask(key);
                    vip_promise.then(function(index){

                        $scope.adverts[index].style ="animated bounceIn";
                        $scope.adverts[index].message ="Горячая цена!!!";

                    })
                    promises.push(vip_promise);
                }

            })
        });



   /* $q.all(promises).then(function(messages) {
        $scope.message = "All " + messages.length + " tasks completed.";
    });*/

    //promise.resolve();

    function waitTask(index) {
        var defer = $q.defer();

        setTimeout(function() {
            $scope.$apply(function() {
                defer.resolve(index);
            });
        }, 2000);

        return defer.promise;
    }


});

IndexController.loadData = function($q, $timeout){
    var defer = $q.defer();
    $timeout(function(){
        defer.resolve();
        console.log("working");
    }, 10);
    return defer.promise;
}



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

        $scope.currentImage = image.advert_image.image.image.small.url;
    };

    //alert($scope.currentImage);
    //$scope.fetch();

});