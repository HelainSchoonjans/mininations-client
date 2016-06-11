'use strict'

describe 'Service: colors', ->

  # load the service's module
  beforeEach module 'mininationsApp'

  # instantiate service
  colors = {}
  beforeEach inject (_colors_) ->
    colors = _colors_

  it 'should do something', ->
    expect(!!colors).toBe true
