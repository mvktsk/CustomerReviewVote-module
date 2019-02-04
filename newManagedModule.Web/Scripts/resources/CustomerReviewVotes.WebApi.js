angular.module('CustomerReviewVotes.Web')
    .factory('CustomerReviewVotes.WebApi', ['$resource', function ($resource) {
        return $resource('api/CustomerReview', {}, {
            search: { method: 'POST', url: 'api/CustomerReview/search' },
        update: { method: 'PUT' },
            searchVotes: { method: 'POST', url: 'api/CustomerReview/vote/search' }
    });
}]);
