'use strict'

describe 'Directive: stepNavigationButtons', ->

  # load the directive's module
  beforeEach module 'mininationsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<step-navigation-buttons></step-navigation-buttons>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the stepNavigationButtons directive'
