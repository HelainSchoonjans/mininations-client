'use strict'

###*
 # @ngdoc function
 # @name mininationsApp.controller:FoundationCtrl
 # @description
 # # FoundationCtrl
 # Controller of the mininationsApp
###
angular.module 'mininationsApp'
  .controller 'FoundationCtrl', ->

    @reasons =
      "ECONOMIQUES":
        "POUR GAGNER DES SOUS": "(T.24)"
        "POUR CACHER DES SOUS": "(T.33)"
        "POUR GARDER DES SOUS": "(T.24)"
        "POUR PARTAGER DES SOUS": "(T.10)"
      "POLITIQUES":
        "POUR LE POUVOIR": "(T.29)"
        "PAR CONSCIENCE POLITIQUE": "(T.11)"
        "PAR REBELLION POLITIQUE": "(T.16)"
        "PAR IDÉAL POLITIQUE": "(T.17)"
      "CULTURELLES":#SOCIALES ET CULTURELLES
        "POUR ETRE LIBRE": "(T.15)"
        "POUR PERDRE SON ANONYMAT": "(T.10)"
        "POUR ETRE UTILE": "(T.5)"
        "PAR PLAISIR": "(T.19)"
        "PAR UTOPIE": "(T.19)"
        "PAR OPPORTUNITE": "(T.25)"
        "PAR REVENDICATION": "(T.19)"
        "POUR ETRE SEUL": "(T.13)"

    @currentNation =
      firstName: null,
      lastName: null,
      nickname: null,
      gender: null
    @stepFieldMapping =
      0: "",
      1: "",
      2: "",
      3: "",
      4: ""

    # we have a maximum
    # a map of list of keys
    # so we know what to erase when going backward


    @maximumStep = 9
    @currentStep = 0

    @isStep = (step) ->
      step == @currentStep

    @next = () ->
      if @currentStep < @maximumStep
        @currentStep = @currentStep + 1

    @previous = () ->
      if @currentStep > 0
       @currentStep = @currentStep - 1

    return
