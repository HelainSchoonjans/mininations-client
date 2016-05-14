'use strict'

describe 'Controller: ExploreCtrl', ->

  beforeEach module 'mininationsApp'

  ExploreCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ExploreCtrl = $controller 'ExploreCtrl', {
      # place here mocked dependencies
    }

  # it 'should attach a list of awesomeThings to the scope', ->
  #   expect(ExploreCtrl.awesomeThings.length).toBe 3
