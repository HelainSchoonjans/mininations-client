'use strict'

describe 'Directive: foundationHeraldry', ->

  # load the directive's module
  beforeEach module 'mininationsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<foundation-heraldry></foundation-heraldry>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the foundationHeraldry directive'
