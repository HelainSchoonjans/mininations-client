'use strict'

describe 'Service: images', ->

  # load the service's module
  beforeEach module 'mininationsApp'

  # instantiate service
  images = {}
  beforeEach inject (_images_) ->
    images = _images_

  it 'is defined', ->
    expect(!!images).toBe true

  it 'contains rabattements', ->
    expect(!!images.rabattements).toBe true

  it 'contains divisions', ->
    expect(!!images.divisions).toBe true
