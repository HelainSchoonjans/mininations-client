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
    $scope.cadavreExquis = foundationHelperService.cadavreExquis

    @foundationHelperService = foundationHelperService

    @currentStepName = "introduction"

    @steps = foundationHelperService.steps

    @isStep = (step) ->
      step == @currentStepName

    @next = (valid = true) ->
      if valid and not @isLastStep()
        @currentStepName = @getNextStepName()

    @previous = ->
      if not @isFirstStep()
       @currentStepName = @getPreviousStepName()

    @isLastStep = ->
      !@getNextStepName()

    @isFirstStep = ->
      !@getPreviousStepName()

    @setRandomAnthem = ->
      nouns = foundationHelperService.words.nouns
      randomWord = nouns[Math.floor(Math.random() * nouns.length)];
      randomWord2 = nouns[Math.floor(Math.random() * nouns.length)];
      $scope.anthem =
        first: randomWord
        second: randomWord2
        random: "#{randomWord.latin} et #{randomWord2.latin}"

    @getCurrentStep = ->
      @steps[@currentStepName]

    @getNextStepName = ->
      @getCurrentStep().next

    @getPreviousStepName = ->
      @getCurrentStep().previous

    return
