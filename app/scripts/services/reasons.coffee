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
            "Monimaker"
            "Blingos"
            "Billing"
            "Jacque Potte"
          ]
      ,
        name: "Pour cacher des sous"
        id: 2
        nation:
          names: [
            "Hiden"
            "Pananamas"
            "Cashcash"
            "PiXou"
          ]
      ,
        name: "Pour garder des sous"
        id: 3
        nation:
          names: [
            "Kipmoney"
            "Goldkiper"
            "Keptoland"
            "Mont Pressieux"
          ]
      ,
        name: "Pour partager des sous"
        id: 4
        nation:
          names: [
            "Ckdo"
            "Nocapito"
            "Novum"
          ]
    ]
    political: [
      {
        name: "Pour le pouvoir"
        id: 5
        nation:
          names: [
            "Trumpette"
            "Mailland"
            "Baratin"
            "Magna"
          ]
      }
      {
        name: "Par conscience politique"
        id: 6
        nation:
          names: [
            "Veritas"
            "Wakywaky"
            "Yogyak"
          ]
      }
      {
        name: "Par rébellion politique"
        id: 7
        nation:
          names: [
            "Rebeland"
            "Kaos"
            "Vnr"
          ]
      }
      {
        name: "Par idéal politique"
        id: 8
        nation:
          names: [
            "Veritass"
            "Novum"
            "Bizounours"
          ]
      }
    ]
    cultural: [
      {
        name: "Pour être libre"
        id: 9
        nation:
          names: [
            "Libertas"
            "Fridhome"
            "Unchained"
            "Lilber"
          ]
      }
      {
        name: "Pour perdre son anonymat"
        id: 10
        nation:
          names: [
            "Ekla"
            "Famousse"
            "Bling"
          ]
      }
      {
        name: "Pour être utile"
        id: 11
        nation:
          names: [
            "Siri"
            "Smarteau"
          ]
      }
      {
        name: "Par plaisir"
        id: 12
        nation:
          names: [
            "Desireland"
            "Grodel"
          ]
      }
      {
        name: "Par utopie"
        id: 13
        nation:
          names: [
            "Newland"
            "Lovaland"
            "Utopia"
            "Brutopie"
          ]
      }
      {
        name: "Par opportunité"
        id: 14
        nation:
          names:  [
            "Wainot"
            "Wiktori"
            "Chance"
            "Fortunam"
          ]
      }
      {
        name: "Par revendication"
        id: 15
        nation:
          names:  [
            "Kaos"
            "Nihil"
            "Vnr"
          ]
      }
      {
        name: "Pour être seul"
        id: 16
        nation:
          names:  [
            "Sololand"
            "Beatasolitu"
            "Tchatchao"
          ]
      }
    ]
