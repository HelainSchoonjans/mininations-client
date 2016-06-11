'use strict'

describe 'Service: fonts', ->

  # load the service's module
  beforeEach module 'mininationsApp'

  # instantiate service
  fonts = {}
  beforeEach inject (_fonts_) ->
    fonts = _fonts_

  it 'should do something', ->
    expect(!!fonts).toBe true
