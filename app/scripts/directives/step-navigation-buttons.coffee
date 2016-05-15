'use strict'

###*
 # @ngdoc directive
 # @name mininationsApp.directive:stepNavigationButtons
 # @description
 # # stepNavigationButtons
###
angular.module 'mininationsApp'
  .directive 'stepNavigationButtons', ->
    restrict: 'E'
    templateUrl: '/views/partials/foundation/step-navigation-buttons.html'
    scope:
      form: "="
      controller: "="
