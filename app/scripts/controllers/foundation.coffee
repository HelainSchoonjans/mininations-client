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
    $scope.genders = foundationHelperService.genders

    @foundationHelperService = foundationHelperService

    @currentStepName = "introduction"

    @stepFSM =
      introduction:
        next: "presentation"
      presentation:
        previous: "introduction"
        next: "reason"
      reason:
        previous: "presentation"
        next: "territory"
      territory:
        previous: "reason"
        next: "titleAndSystem"
      titleAndSystem:
        previous: "territory"
        next: "naming"
      naming:
        previous: "titleAndSystem"
        next: "anthem"
      anthem:
        previous: "naming"
        next: "flag"
      flag:
        previous: "anthem"
        next: "heraldry"
      heraldry:
        previous: "flag"
        next: "render"
      render:
        previous: "heraldry"

    @isStep = (step) ->
      step == @currentStepName

    @next = (valid = true) ->
      if valid && @stepFSM[@currentStepName].next
        @currentStepName = @stepFSM[@currentStepName].next

    @previous = () ->
      if @stepFSM[@currentStepName].previous
       @currentStepName = @stepFSM[@currentStepName].previous

    return
