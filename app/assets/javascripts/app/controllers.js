function SearchListCtrl($scope){
    $scope.init = function(data){
        $scope.adverts = data;
        //alert($scope.adverts[1].id);

        //$scope.orderUpdate = '-updated_at';
        $scope.predicate = 'price';



    }
}




function PhoneListCtrl($scope, $http) {

    $scope.init = function(id)
    {
        //This function is sort of private constructor for controller
        $scope.id = id;

    $scope.currentImage = {};

    $http.get('/api/adverts/' + $scope.id + '/advert_images.json').success(function(data) {

        $scope.images = data;

    });

    $http.get('/api/adverts/' + $scope.id + '.json').success(function(data) {
        $scope.currentImage = data;

    });

    function handleImagesLoaded(data, status) {
        $scope.images = data;
        $scope.currentImage = _.first($scope.images);
        //$scope.imageCategories = _.uniq(_.pluck($scope.images, 'category'));
    }

    $scope.fetch = function () {
        $http.get($scope.url).success($scope.handleImagesLoaded);
    }

    $scope.setCurrentImage = function (image) {
        $scope.currentImage = image;
    };

    $scope.fetch();

    };
}


function ExampleController ($scope, $timeout, $log) {

    // Enable the new Google Maps visuals until it gets enabled by default.
    // See http://googlegeodevelopers.blogspot.ca/2013/05/a-fresh-new-look-for-maps-api-for-all.html
    google.maps.visualRefresh = true;

    angular.extend($scope, {

        position: {
            coords: {
                latitude: 45,
                longitude: -73
            }
        },

        /** the initial center of the map */
        centerProperty: {
            latitude: 45,
            longitude: -73
        },

        /** the initial zoom level of the map */
        zoomProperty: 4,

        /** list of markers to put in the map */
        markersProperty: [ {
            latitude: 45,
            longitude: -74
        }],

        // These 2 properties will be set when clicking on the map
        clickedLatitudeProperty: null,
        clickedLongitudeProperty: null,

        eventsProperty: {
            click: function (mapModel, eventName, originalEventArgs) {
                // 'this' is the directive's scope
                $log.log("user defined event on map directive with scope", this);
                $log.log("user defined event: " + eventName, mapModel, originalEventArgs);
            }
        }
    });
}