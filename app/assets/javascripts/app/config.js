angular.module('realty').config(function($locationProvider) {
   return $locationProvider.html5Mode(true);

});


angular.module('realty').config(function($stateProvider, $urlRouterProvider){
    //$urlRouterProvider.otherwise("/");
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
            url: "/adverts?living&operation_type&category",
            views: {
                "index": {
                    controller: "IndexController",
                    templateUrl: "/assets/adverts/index.html.haml"

                }

            }
        })
});