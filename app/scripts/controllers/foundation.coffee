'use strict'

###*
 # @ngdoc function
 # @name mininationsApp.controller:FoundationCtrl
 # @description
 # # FoundationCtrl
 # Controller of the mininationsApp
###
angular.module 'mininationsApp'
  .controller 'FoundationCtrl', ->

    @maximumStep = 9
    @currentStep = 0

    @isStep = (step) ->
      step == @currentStep

    @next = () ->
      if @currentStep < @maximumStep
        @currentStep = @currentStep + 1

    @previous = () ->
      if @currentStep > 0
       @currentStep = @currentStep - 1

    return
