angular.module('realty').directive('myForm', function($http) {
    return {
        restrict: 'A',
        scope: true,
        controller: function($scope, $attrs) {
          //  if ($attrs.myForm == 0) {
                alert('directive');
                //alert($('[name=living]').val());
                console.log('new form');
          //  }
    },
        link: function(scope, element, attrs) {
    }
}
});

angular.module('realty', []).directive('helloMaps', function () {
    return function (scope, elem, attrs) {
        var mapOptions,
            latitude = attrs.latitude,
            longitude = attrs.longitude,
            map;

        latitude = latitude && parseFloat(latitude, 10) || 43.074688;
        longitude = longitude && parseFloat(longitude, 10) || -89.384294;

        mapOptions = {
            zoom: 8,
            center: new google.maps.LatLng(latitude, longitude)
        };

        map = new google.maps.Map(elem[0], mapOptions);
    };
});