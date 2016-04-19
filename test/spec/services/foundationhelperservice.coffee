'use strict'

describe 'Service: foundationHelperService', ->

  beforeEach module 'mininationsApp'

  foundationHelperService = {}

  beforeEach inject (_foundationHelperService_) ->
    foundationHelperService = _foundationHelperService_

  it 'should do something', ->
    expect(!!foundationHelperService).toBe true
