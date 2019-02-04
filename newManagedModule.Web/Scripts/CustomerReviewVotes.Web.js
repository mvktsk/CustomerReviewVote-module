//Call this to register our module to main application
var moduleTemplateName = "CustomerReviewVotes.Web";

if (AppDependencies != undefined) {
    AppDependencies.push(moduleTemplateName);
}

angular.module(moduleTemplateName, [])
.config(['$stateProvider', '$urlRouterProvider',
    function ($stateProvider, $urlRouterProvider) {
        $stateProvider
            .state('workspace.CustomerReviewVotesWeb', {
                url: '/CustomerReview',
                templateUrl: '$(Platform)/Scripts/common/templates/home.tpl.html',
                controller: [
                    '$scope', 'platformWebApp.bladeNavigationService', function ($scope, bladeNavigationService) {
                        var newBlade = {
                            id: 'reiewsList',
                            controller: 'reviewsListController',
                            template: 'Modules/$(CustomerReviewVotes.Web)/Scripts/blades/reviews-list.tpl.html',
                            isClosingDisabled: true
                        };
                        bladeNavigationService.showBlade(newBlade);
                    }
                ]
            });
    }
])
.run(['$rootScope', 'platformWebApp.mainMenuService', 'platformWebApp.widgetService', '$state',
    function ($rootScope, mainMenuService, widgetService, $state) {
        //Register module in main menu
        var menuItem = {
            path: 'browse/CustomerReview',
            icon: 'fa fa-cube',
            title: 'Reviews',
            priority: 100,
            action: function () { $state.go('workspace.CustomerReviewVotesWeb') },
            permission: 'customerReview:read'
        };
        mainMenuService.addMenuItem(menuItem);

        //Register reviews widget inside product blade
        var itemReviewsWidget = {
            controller: 'reviewWidgetController',
            template: 'Modules/$(CustomerReviewVotes.Web)/Scripts/widgets/customerReviewWidget.tpl.html'
        };
        widgetService.registerWidget(itemReviewsWidget, 'itemDetail');
    }
]);
