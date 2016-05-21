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
      nouns = foundationHelperService.cadavreExquis.nouns
      adjectives = foundationHelperService.cadavreExquis.adjectives
      verbs = foundationHelperService.cadavreExquis.verbs

      noun = nouns[Math.floor(Math.random() * nouns.length)]
      adjective = adjectives[Math.floor(Math.random() * adjectives.length)]
      verb = verbs[Math.floor(Math.random() * verbs.length)]
      cod = nouns[Math.floor(Math.random() * nouns.length)]
      adjective2 = adjectives[Math.floor(Math.random() * adjectives.length)]

      $scope.anthem=
        french: "#{noun.french} #{adjective.french[noun.plural][noun.gender]}"+
          " #{verb.french[noun.plural]} #{cod.french}"+
          " #{adjective2.french[cod.plural][cod.gender]}"
        latin: "#{noun.latin} #{adjective.latin[noun.plural][noun.gender]}"+
          " #{verb.latin[noun.plural]} #{cod.latin}"+
          " #{adjective2.latin[cod.plural][cod.gender]}"

    @getCurrentStep = ->
      @steps[@currentStepName]

    @getNextStepName = ->
      @getCurrentStep().next

    @getPreviousStepName = ->
      @getCurrentStep().previous

    return
