'use strict'

describe 'Filter: selectedTerritoryFilters', ->

  # load the filter's module
  beforeEach module 'mininationsApp'

  # initialize a new instance of the filter before each test
  selectedTerritoryFilters = {}
  beforeEach inject ($filter) ->
    selectedTerritoryFilters = $filter 'selectedTerritoryFilters'

  # it 'should return the input prefixed with "selectedTerritoryFilters filter:"', ->
  #   text = 'angularjs'
  #   expect(selectedTerritoryFilters text).toBe ('selectedTerritoryFilters filter: ' + text)
