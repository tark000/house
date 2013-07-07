angular.module('realty').config(function($locationProvider) {
   return $locationProvider.html5Mode(true);

});

angular.module('realty').config(function($httpProvider) {
    $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
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
        state("index", {
            parent: "default",
            url: "/",
            views: {
                "index": {
                    controller: "IndexController",
                    templateUrl: "/assets/adverts/index.html.haml"

                }

            }
        }).

        state("adverts", {
            parent: "default",
            url: "/adverts?operation_type",
            views: {
                "index": {
                    controller: "IndexController",
                    templateUrl: "/assets/adverts/index.html.haml"

                }

            }
        })
});