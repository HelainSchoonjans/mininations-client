'use strict'

###*
 # @ngdoc service
 # @name mininationsApp.reasons
 # @description
 # # reasons
 # Constant in the mininationsApp.
###
angular.module 'mininationsApp'
  .constant 'reasons',
    economical: [
        name: "Par gagner des sous"
        id: 1
        nation:
          names: [
            "monimaker"
            "illionar"
            "billy"
            "Jacque Potte"
          ]
      ,
        name: "Pour cacher des sous"
        id: 2
        nation:
          names: [
            "hiden"
            "unseecity"
            "cashcash"
            "pixou"
          ]
      ,
        name: "Pour garder des sous"
        id: 3
        nation:
          names: [
            "kipmoney"
            "goldkiper"
            "keptoland"
            "Mont pressieux"
          ]
      ,
        name: "Pour partager des sous"
        id: 4
        nation:
          names: [
            "cher"
            "nocapito"
            "novum"
            "sossiokool"
          ]
    ]
    political: [
      {
        name: "Pour le pouvoir"
        id: 5
        nation:
          names: [
            "powerland"
            "mailland"
            "baratin"
            "magna"
          ]
      }
      {
        name: "Par conscience politique"
        id: 6
        nation:
          names: [
            "veritas"
            "wakywaky"
            "cimer"
          ]
      }
      {
        name: "Par rébellion politique"
        id: 7
        nation:
          names: [
            "rebeland"
            "kaos"
            "bellior"
          ]
      }
      {
        name: "Par idéal politique"
        id: 8
        nation:
          names: [
            "veritass"
            "novum"
            "bizounours"
          ]
      }
    ]
    cultural: [
      {
        name: "Pour être libre"
        id: 9
        nation:
          names: [
            "libertas"
            "fridhome"
            "unchained"
          ]
      }
      {
        name: "Pour perdre son anonymat"
        id: 10
        nation:
          names: [
            "ekla"
            "famousse"
          ]
      }
      {
        name: "Pour être utile"
        id: 11
        nation:
          names: [
            "Siri"
          ]
      }
      {
        name: "Par plaisir"
        id: 12
        nation:
          names: [
            "Desireland"
          ]
      }
      {
        name: "Par utopie"
        id: 13
        nation:
          names: [
            "newland"
            "lovaland"
            "utopia"
            "brutopie"
          ]
      }
      {
        name: "Par opportunité"
        id: 14
        nation:
          names:  [
            "wainot"
            "wiktori"
            "chance"
            "fortunam"
          ]
      }
      {
        name: "Par revendication"
        id: 15
        nation:
          names:  [
            "kaos"
            "nihil"
          ]
      }
      {
        name: "Pour être seul"
        id: 16
        nation:
          names:  [
            "sololand"
            "beatasolitu"
          ]
      }
    ]
