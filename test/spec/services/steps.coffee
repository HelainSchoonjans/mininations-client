'use strict'

describe 'Service: steps', ->

  # load the service's module
  beforeEach module 'mininationsApp'

  # instantiate service
  steps = {}
  beforeEach inject (_steps_) ->
    steps = _steps_

  it 'should do something', ->
    expect(!!steps).toBe true
