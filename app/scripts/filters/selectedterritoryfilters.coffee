'use strict'

###*
 # @ngdoc filter
 # @name mininationsApp.filter:selectedTerritoryFilters
 # @function
 # @description
 # # selectedTerritoryFilters
 # Filter in the mininationsApp.
###
angular.module 'mininationsApp'
  .filter 'selectedTerritoryFilters', ->
    (territories, selectedFilters) ->

      if not selectedFilters
        return territories

      matchFilters = (territory) ->
        for filter in selectedFilters
          if not (filter in territory.filters)
            return false
        return true

      filteredTerritories = []
      for territory in territories
        if matchFilters(territory)
          filteredTerritories.push territory

      return filteredTerritories
