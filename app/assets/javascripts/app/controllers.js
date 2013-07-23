
angular.module('realty').controller('ApplicationController', function($scope,$rootScope){


});

var IndexController = angular.module('realty').controller('IndexController', function($scope, Advert, $http, $location, $state, $stateParams, Task, $q){

    //TODO - if maps true, disable pagination parameters!

    var promises = [];
    $scope.markers = [];
    $scope.center ={
        latitude: 50.4501,
        longitude: 30.5234
    }

    $scope.zoom = 10;
    google.maps.visualRefresh = true;


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

            if($stateParams['maps']==='1'){
                var map = true;
            }

            angular.forEach($scope.adverts, function(item,key){
                if(item.price>'200'){
                    var vip_promise = waitTask(key);
                    vip_promise.then(function(index){
                        $scope.adverts[index].style ="animated bounceIn";
                        $scope.adverts[index].message ="Горячая цена!";
                    })
                    promises.push(vip_promise);
                }
                if(angular.equals(map, true)){
                    //console.log("scope markers",JSON.stringify(item));
                    if(item.latitude){
                        $scope.markers.push({
                            latitude: item.latitude,
                            longitude: item.longitude,
                            showWindow:false,
                            click:true
                        });
                    }
                }
            })
        });

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

IndexController.loadData = function($q, $timeout, $stateParams){
    var defer = $q.defer();
    $timeout(function(){
        defer.resolve();
        console.log("working");
        console.log("state params",JSON.stringify($stateParams));

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

        Task.get({
            id: $stateParams['id']
        }, function(response) {
            $scope.advert = response;
            $scope.currentImage  = $scope.advert.image;

        }, function(response) {});


    $scope.setCurrentImage = function (image) {

        $scope.currentImage = image.advert_image.image.image.big.url;
    };

    $scope.setCurrentImageMain = function (img) {

        $scope.currentImage = img.image;
    };


    $scope.show = function(value){
       if (value  == 0 || value  == null){
           return "false";
       }else {
           return "true";
       }

    }



});


