'use strict'

describe 'Service: cadavresExquis', ->

  # load the service's module
  beforeEach module 'mininationsApp'

  # instantiate service
  cadavresExquis = {}
  beforeEach inject (_cadavresExquis_) ->
    cadavresExquis = _cadavresExquis_

  it 'should do something', ->
    expect(!!cadavresExquis).toBe true
