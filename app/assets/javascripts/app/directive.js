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