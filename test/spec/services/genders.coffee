'use strict'

describe 'Service: genders', ->

  # load the service's module
  beforeEach module 'mininationsApp'

  # instantiate service
  genders = {}
  beforeEach inject (_genders_) ->
    genders = _genders_

  it 'should do something', ->
    expect(!!genders).toBe true
