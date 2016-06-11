'use strict'

describe 'Service: reasons', ->

  # load the service's module
  beforeEach module 'mininationsApp'

  # instantiate service
  reasons = {}
  beforeEach inject (_reasons_) ->
    reasons = _reasons_

  it 'should do something', ->
    expect(!!reasons).toBe true
