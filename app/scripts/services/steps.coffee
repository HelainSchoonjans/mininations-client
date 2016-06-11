'use strict'

###*
 # @ngdoc service
 # @name mininationsApp.steps
 # @description
 # # steps
 # Constant in the mininationsApp.
###
angular.module 'mininationsApp'
  .constant 'steps',
    introduction:
      next: "presentation"
    presentation:
      previous: "introduction"
      next: "reason"
    reason:
      previous: "presentation"
      next: "territory"
    territory:
      previous: "reason"
      next: "titleAndSystem"
    titleAndSystem:
      previous: "territory"
      next: "naming"
    naming:
      previous: "titleAndSystem"
      next: "anthem"
    anthem:
      previous: "naming"
      next: "flag"
    flag:
      previous: "anthem"
    #   next: "heraldry"
    # heraldry:
    #   previous: "flag"
      next: "render"
    render:
        previous: "flag"
      # previous: "heraldry"
