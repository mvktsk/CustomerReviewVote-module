angular.module('newManagedModule.Web')
.factory('newManagedModule.WebApi', ['$resource', function ($resource) {
    return $resource('api/newManagedModule', {}, {
        search: { method: 'POST', url: 'api/newManagedModule/search' },
        update: { method: 'PUT' }
    });
}]);
