'use strict'

###*
 # @ngdoc service
 # @name mininationsApp.genders
 # @description
 # # genders
 # Constant in the mininationsApp.
###
angular.module 'mininationsApp'
  .constant 'genders', [
    id: "male"
    value: "Homme"
  ,
    id: "female"
    value: "Femme"
  ]
