'use strict'

###*
 # @ngdoc function
 # @name mininationsApp.controller:FoundationCtrl
 # @description
 # # FoundationCtrl
 # Controller of the mininationsApp
###
angular.module 'mininationsApp'
  .controller 'FoundationCtrl', (
    $scope
    foundationHelperService
    images
    colors
    fonts
    steps
    cadavresExquis
    reasons
    genders
  ) ->

    $scope.titles = foundationHelperService.titles
    $scope.territoryFilters = foundationHelperService.territoryFilters
    $scope.words = foundationHelperService.words
    $scope.reasons = reasons
    $scope.territories = foundationHelperService.territoriesDetailed
    $scope.genders = genders
    $scope.cadavreExquis = cadavresExquis
    $scope.colors = colors
    $scope.divisions = images.divisions
    $scope.rabattements = images.rabattements
    $scope.symbols = foundationHelperService.symbols
    $scope.fontFamilies = fonts

    $scope.resetNationNames = () ->
      nationNames = []
      nationNames.push name for name in $scope.reason.nation.names
      nationNames.push name for name in foundationHelperService.getNationNames(
        $scope.user
        $scope.territory
      )
      nationNames.push name for name in $scope.system.names
      $scope.nationNames = nationNames

    $scope.setTitle = (title) ->
      $scope.title = title
      $scope.method = 'system'
    $scope.setSystem = (system) ->
      $scope.system = system
      $scope.method = 'qualifier'
    $scope.setQualifier = (qualifier) ->
      $scope.system.type = qualifier
      $scope.method = ''
      $scope.resetNationNames()

    $scope.setDivision = (division) ->
      $scope.division = division
    $scope.setRabattement = (rabattement) ->
      $scope.rabattement = rabattement
    $scope.setDivisionColor = (color) ->
      $scope.divisionColor = color
    $scope.setRabattementColor = (color) ->
      $scope.rabattementColor = color
    $scope.setSecondDivisionColor = (color) ->
      $scope.secondDivisionColor = color
    $scope.setThirdDivisionColor = (color) ->
      $scope.thirdDivisionColor = color
    $scope.setTextColor = (color) ->
      $scope.textColor = color

    @getRGBColorStyle = (color, dflt="rgb(255, 255, 255)") ->
      if color
        return "rgb(#{color.red}, #{color.green}, #{color.blue})"
      else
        return dflt

    $scope.getStyle = (color) =>
      fill: @getRGBColorStyle(color)
    $scope.getLineStyle = (color) =>
      stroke: @getRGBColorStyle(color)
      "stroke-width":"20"
    $scope.getTextStyle = (size, font, color) =>
      'font-size': size or '25'
      'font-family': font?.value or ''
      fill: @getRGBColorStyle(color, "rgb(0, 0, 0)")

    @initSelectedFilters = () ->
      $scope.selected = {} if not $scope.selected
      $scope.selected.filters = [] if not $scope.selected.filters

    $scope.toggleFilter = (filter) =>
      filter.active = not filter?.active
      @initSelectedFilters()
      filters = $scope.selected.filters
      filterId = filter.id
      index = filters.indexOf(filterId)
      if index > -1
        filters.splice(index, 1)
      else
        filters.push filterId

    @foundationHelperService = foundationHelperService

    @currentStepName = "introduction"

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
      steps[@currentStepName]

    @getNextStepName = ->
      @getCurrentStep().next

    @getPreviousStepName = ->
      @getCurrentStep().previous

    return
