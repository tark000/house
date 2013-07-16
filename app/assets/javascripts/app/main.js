var app = angular.module('realty',['advert.services','map','ui.compat']);

var myApp = angular.module('myApp', []);

myApp.factory('Data', function () {
    return { message: "I'm data from a service" };
});

function FirstCtrl($scope, Data) {

    $scope.data = {message: Data.message}
}

function SecondCtrl($scope) {

}