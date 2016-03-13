'use strict'

describe 'Controller: FoundationCtrl', ->

  # load the controller's module
  beforeEach module 'mininationsApp'

  FoundationCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    FoundationCtrl = $controller 'FoundationCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(FoundationCtrl.awesomeThings.length).toBe 3
