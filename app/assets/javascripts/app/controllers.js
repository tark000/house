function SearchListCtrl($scope, $http){
    $scope.init = function(data){
        $scope.adverts = data;
        //alert($scope.adverts[1].id);

        //$scope.orderUpdate = '-updated_at';
        $scope.predicate = 'updated_at';

        $scope.getOperation = function (advert) {
            $scope.opertion = "аренда";
        };



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