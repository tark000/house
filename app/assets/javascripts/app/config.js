angular.module('realty').config(function($locationProvider) {
    return $locationProvider.html5Mode(true);

});

angular.module('realty').config(function($httpProvider) {
    $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
});


angular.module('realty').config(function($stateProvider, $urlRouterProvider){
    $urlRouterProvider.otherwise("/adverts");


    $stateProvider
        .state('default', {
            abstract: true, // root route
            views: {
                "": {
                    controller: "ApplicationController",
                    templateUrl: "/assets/layouts/default.html.haml"
                }
            }
        }).
        state("adverts", {
            parent: "default",
            url: "/adverts?utf8&living&operation_type&category&state&min_price&max_price&maps&gender&min_area&max_area&region_id&city_id&page&pageSize",
            views: {
                "index": {
                    controller: "IndexController",
                   /* templateUrl: "/assets/adverts/index.html.haml",*/

                    templateUrl: function ($stateParams){
                        if($stateParams["maps"]==='1'){
                            return "/assets/adverts/map.html.haml"
                        }else{
                            return "/assets/adverts/index.html.haml"
                        }
                    },
                    resolve: {
                        loadData: IndexController.loadData
                    }
                }
            }
        }, function(){
            console.log("state==", $state);
        }).
        state("maps", {
            parent: "default",
            url: "/adverts?utf8&living&operation_type&category&state&min_price&max_price&maps&gender&min_area&max_area&region_id&city_id&page&pageSize",
            views: {
                "maps": {
                    controller: "MapController",
                    templateUrl: "/assets/adverts/map.html.haml"
                }
            }
        }).
        state("show", {

            parent: "default",
            url: "/adverts/:id",
            views: {
                "show": {
                    controller: "AdvertDetailController",
                    templateUrl: "/assets/adverts/show.html.haml"
                },
                "desc@show":{
                    templateUrl: "/assets/adverts/desc.html.haml"
                },
                "plan@show":{
                    templateUrl: "/assets/adverts/plan.html.haml"
                },
                "video@show":{
                    templateUrl: "/assets/adverts/video.html.haml"
                },
                "map@show":{
                    templateUrl: "/assets/adverts/one_map.html.haml"
                }
            }
        })


});
angular.module('realty').run(function($rootScope) {
    $rootScope.$on('$viewContentLoaded', function () {
        $(document).foundation();
    });
});