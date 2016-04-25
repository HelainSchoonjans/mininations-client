'use strict'

describe 'Controller: WelcomeCtrl', ->

  beforeEach module 'mininationsApp'

  WelcomeCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    WelcomeCtrl = $controller 'WelcomeCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(WelcomeCtrl.awesomeThings.length).toBe 3
