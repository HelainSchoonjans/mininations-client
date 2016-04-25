'use strict'

describe 'Directive: foundationAnthem', ->

  # load the directive's module
  beforeEach module 'mininationsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<foundation-anthem></foundation-anthem>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the foundationAnthem directive'
