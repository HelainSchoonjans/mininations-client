'use strict'

###*
 # @ngdoc function
 # @name mininationsApp.controller:FoundationCtrl
 # @description
 # # FoundationCtrl
 # Controller of the mininationsApp
###
angular.module 'mininationsApp'
  .controller 'FoundationCtrl', (foundationHelperService) ->

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
      console.log valid
      if valid && @currentStep < @maximumStep
        @currentNation[@currentStep] = data
        @currentStep = @currentStep + 1

    @previous = () ->
      if @currentStep > 0
       @currentNation[@currentStep] = null
       @currentStep = @currentStep - 1

    return
