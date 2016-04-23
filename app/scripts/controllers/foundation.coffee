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

    $scope.selected = {}
    $scope.titles = foundationHelperService.titles
    $scope.territoryFilters = foundationHelperService.territoryFilters
    $scope.economicalReasons = foundationHelperService.economicalReasons
    $scope.politicalReasons = foundationHelperService.politicalReasons
    $scope.culturalReasons = foundationHelperService.culturalReasons
    $scope.territories = foundationHelperService.territoriesDetailed

    @foundationHelperService = foundationHelperService

    @currentNation = {}

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
        @currentNation[@currentStep] = data
        @currentStep = @currentStep + 1
        $scope.selected = {}

    @previous = () ->
      if @currentStep > 0
       @currentNation[@currentStep] = null
       @currentStep = @currentStep - 1

    return
