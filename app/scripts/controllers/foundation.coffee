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

    @isVisible = () ->
      true

    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
