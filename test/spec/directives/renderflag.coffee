'use strict'

describe 'Directive: renderFlag', ->

  # load the directive's module
  beforeEach module 'mininationsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<render-flag></render-flag>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the renderFlag directive'
