var app = angular.module('crudApp', ['ui.router', 'ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:9090/App',
    USER_SERVICE_API: 'http://localhost:9090/App/api/user/'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function ($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'partials/list',
                controller: 'UserController',
                controllerAs: 'ctrl',
                resolve: {
                    users: function ($q, UserService) {
                        console.log('Load all users');
                        var deferred = $q.defer();
                        UserService.loadAllUsers().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            });
        $urlRouterProvider.otherwise('/');
    }]);

