angular.module('newManagedModule.Web')
    .controller('reviewsListController', ['$scope', 'newManagedModule.WebApi', 'platformWebApp.bladeUtils', 'uiGridConstants', 'platformWebApp.uiGridHelper',
        function ($scope, reviewAPI, bladeUtils, uiGridConstants, uiGridHelper) {
            $scope.uiGridConstants = uiGridConstants;

            var blade = $scope.blade;
            var bladeNavigationService = bladeUtils.bladeNavigationService;
            blade.title = 'Reviews Blade';

                        
            blade.refresh = function () {
                blade.isLoading = true;
                    reviewAPI.search(angular.extend(filter, {
                    searchPhrase: filter.keyword ? filter.keyword : undefined,
                    sort: uiGridHelper.getSortExpression($scope),
                    skip: ($scope.pageSettings.currentPage - 1) * $scope.pageSettings.itemsPerPageCount,
                    take: $scope.pageSettings.itemsPerPageCount
                }), function (data) {
                    blade.isLoading = false;
                    $scope.pageSettings.totalItems = data.totalCount;
                    blade.currentEntities = data.results;
                        });
            }

             
            blade.selectNode = function (data) {
                $scope.selectedNodeId = data.id;

                var filterReviewVotes = { take: 0 };

                function refreshReviewVotes() {
                    $scope.loading = true;
                    reviewAPI.searchVotes(filterReviewVotes, function (data) {
                        $scope.loading = false;
                        $scope.totalCount = data.totalCount;
                    });
                }

                
                filterReviewVotes.customerReviewIds = [data.id];
                refreshReviewVotes();


                
                var newBlade = {
                    id: 'reviewVotesList',
                    filter: filterReviewVotes,
                    title: data.name,
                    controller: 'reviewVotesController',
                    template: 'Modules/$(newManagedModule.Web)/Scripts/blades/review-votes-list.tpl.html'
                };
                bladeNavigationService.showBlade(newBlade, blade);
            }

            blade.headIcon = 'fa-comments';

            blade.toolbarCommands = [
                {
                    name: "platform.commands.refresh", icon: 'fa fa-refresh',
                    executeMethod: blade.refresh,
                    canExecuteMethod: function () {
                        return true;
                    }
                },
            ];

            // simple and advanced filtering

            var filter = $scope.filter = blade.filter || {};

            filter.criteriaChanged = function () {
                if ($scope.pageSettings.currentPage > 1) {
                    $scope.pageSettings.currentPage = 1;
                } else {
                    blade.refresh();
                }
            };

            // ui-grid
            $scope.setGridOptions = function (gridOptions) {
                uiGridHelper.initialize($scope, gridOptions, function (gridApi) {
                    uiGridHelper.bindRefreshOnSortChanged($scope);
                });
                bladeUtils.initializePagination($scope);
            };
}]);
