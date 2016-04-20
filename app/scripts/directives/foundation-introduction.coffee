'use strict'

###*
 # @ngdoc directive
 # @name mininationsApp.directive:foundationIntroduction
 # @description
 # # foundationIntroduction
###
angular.module 'mininationsApp'
  .directive 'foundationIntroduction', ->
    # restrict: 'EA'
    templateUrl: '/views/partials/foundationIntroduction.html'
