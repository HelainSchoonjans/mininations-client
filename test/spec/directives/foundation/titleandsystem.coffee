'use strict'

describe 'Directive: titleAndSystem', ->

  # load the directive's module
  beforeEach module 'mininationsApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  # it 'should make hidden element visible', inject ($compile) ->
  #   element = angular.element '<title-and-system></title-and-system>'
  #   element = $compile(element) scope
  #   expect(element.text()).toBe 'this is the titleAndSystem directive'
