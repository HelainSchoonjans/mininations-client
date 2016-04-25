'use strict'

###*
 # @ngdoc function
 # @name mininationsApp.controller:FoundationCtrl
 # @description
 # # FoundationCtrl
 # Controller of the mininationsApp
###
angular.module 'mininationsApp'
  .controller 'FoundationCtrl', ($scope, foundationHelperService) ->

    $scope.titles = foundationHelperService.titles
    $scope.territoryFilters = foundationHelperService.territoryFilters
    $scope.nationNames = foundationHelperService.nationNames
    $scope.words = foundationHelperService.words
    $scope.reasons = foundationHelperService.reasons
    $scope.territories = foundationHelperService.territoriesDetailed

    @foundationHelperService = foundationHelperService

    @stepFieldMapping =
      0: "",
      1: "",
      2: "",
      3: "",
      4: ""

    @maximumStep = 9
    @currentStep = 0

    @isStep = (step) ->
      step == @currentStep

    @next = (data, valid = true) ->
      if valid && @currentStep < @maximumStep
        @currentStep = @currentStep + 1

    @previous = () ->
      if @currentStep > 0
       @currentStep = @currentStep - 1

    return
