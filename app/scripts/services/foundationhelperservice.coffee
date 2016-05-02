'use strict'

###*
 # @ngdoc service
 # @name mininationsApp.foundationHelperService
 # @description
 # # foundationHelperService
 # provides useful data and methods for the foundation of a minination.
###
angular.module 'mininationsApp'
  .service 'foundationHelperService', ->

    @reasons =
      economical: [
        {
          name: "pour gagner des sous"
          id: 1
          nation:
            names: [
              "monimaker"
              "illionar"
              "billy"
              "Jacque Potte"
            ]
        }
        {
          name: "pour cacher des sous"
          id: 2
          nation:
            names: [
              "hiden"
              "unseecity"
              "cashcash"
              "pixou"
            ]
        }
        {
          name: "pour garder des sous"
          id: 3
          nation:
            names: [
              "kipmoney"
              "goldkiper"
              "keptoland"
              "Mont pressieux"
            ]
        }
        {
          name: "pour partager des sous"
          id: 4
          nation:
            names: [
              "cher"
              "nocapito"
              "novum"
              "sossiokool"
            ]
        }
      ]
      political: [
        {
          name: "pour le pouvoir"
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
          name: "par conscience politique"
          id: 6
          nation:
            names: [
              "veritas"
              "wakywaky"
              "cimer"
            ]
        }
        {
          name: "par rébellion politique"
          id: 7
          nation:
            names: [
              "rebeland"
              "kaos"
              "bellior"
            ]
        }
        {
          name: "par idéal politique"
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
          name: "pour être libre"
          id: 9
          nation:
            names: [
              "libertas"
              "fridhome"
              "unchained"
            ]
        }
        {
          name: "pour perdre son anonymat"
          id: 10
          nation:
            names: [
              "ekla"
              "famousse"
            ]
        }
        {
          name: "pour être utile"
          id: 11
          nation:
            names: [
              "Siri"
            ]
        }
        {
          name: "par plaisir"
          id: 12
          nation:
            names: [
              "Desireland"
            ]
        }
        {
          name: "par utopie"
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
          name: "par opportunité"
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
          name: "par revendication"
          id: 15
          nation:
            names:  [
              "kaos"
              "nihil"
            ]
        }
        {
          name: "pour être seul"
          id: 16
          nation:
            names:  [
              "sololand"
              "beatasolitu"
            ]
        }
      ]

    @territoryFilters = [
        {
            name: "désert"
            id: 1
        }
        {
            name: "glace"
            id: 2
        }
        {
            name: "isolé"
            id: 3
        }
        {
            name: "chaud"
            id: 4
        }
        {
            name: "froid"
            id: 5
        }
        {
            name: "humide"
            id: 6
        }
        {
            name: "tropical"
            id: 7
        }
        {
            name: "abandonné"
            id: 8
        }
        {
            name: "disputé/contesté"
            id: 9
        }
        {
            name: "peuplé"
            id: 10
        }
        {
            name: "naturel"
            id: 11
        }
        {
            name: "construit"
            id: 12
        }
    ]
    @territoriesDetailed = [
        {
          id: 1
          name: "Antartique 1"
          continent: "Antartique"
          ocean: "n/a"
          superficie: "<500 km^2"
          population: "0"
          filters: [
            1, 2, 3, 5, 11
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 2 ]
            socioculturel: [ 1, 6, 7, 8 ]
          reasons: [ 2, 4, 6, 9, 14, 15, 16 ]
        }
        {
          id: 2
          name: "Antartique 2"
          continent: "Antartique"
          ocean: "n/a"
          superficie: "<1500 km^2"
          population: "0"
          filters: [
            1, 2, 3, 5, 11
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 2 ]
            socioculturel: [ 1, 6, 7, 8 ]
          reasons: [ 2, 4, 6, 9, 14, 15, 16 ]
        }
        {
          id: 3
          name: "Antartique 3"
          continent: "Antartique"
          ocean: "n/a"
          superficie: "<100 km^2"
          population: "0"
          filters: [
            1, 2, 3, 5, 11
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 2 ]
            socioculturel: [ 1, 6, 7, 8 ]
          reasons: [ 2, 4, 6, 9, 14, 15, 16 ]
        }
        {
          id: 4
          name: "Moresnet neutre"
          continent: "Europe"
          ocean: "n/a"
          superficie: "3.5 km^2"
          population: "?"
          filters: [
            6, 9, 10, 12
          ]
          coordinates: ""
          influence:
            economical: [ ]
            political: [ 1, 3 ]
            socioculturel: [ 5, 7 ]
          reasons: [ 5, 7, 13, 15 ]
        }
        {
          id: 5
          name: "Erik the red's land"
          continent: "Europe"
          ocean: "n/a"
          superficie: "? km^2"
          population: "?"
          filters: [
            2, 5, 9, 10, 11, 12
          ]
          coordinates: ""
          influence:
            economical: [ ]
            political: [ 2, 3, 4 ]
            socioculturel: [ 2, 5, 7 ]
          reasons: [ 6, 7, 8, 10, 13, 15 ]
        }
        {
          id: 6
          name: "Saudi Iraki"
          continent: "Afrique"
          ocean: "n/a"
          superficie: "7044 km^2"
          population: "?"
          filters: [
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 1, 2, 3, 4 ]
            socioculturel: [ 3, 5, 7 ]
          reasons:[ 2, 4, 5, 6, 7, 8, 11, 13, 15 ]
        }
        {
          id: 7
          name: "Saudi Kuwaiti"
          continent: "Afrique"
          ocean: "n/a"
          superficie: "5770 km^2"
          population: "?"
          filters: [
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 1, 2, 3, 4 ]
            socioculturel: [ 3, 5, 7 ]
          reasons:[ 2, 4, 5, 6, 7, 8, 11, 13, 15 ]
        }
        {
          id: 8
          name: "Somaliland neutre"
          continent: "Afrique"
          ocean: "n/a"
          superficie: "13760 km^2"
          population: "1 M"
          filters: [
            1, 4, 9, 10
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 1, 2, 3, 4 ]
            socioculturel: [ 3, 5, 7 ]
          reasons:[ 2, 4, 5, 6, 7, 8, 11, 13, 15 ]
        }
        {
          id: 9
          name: "Bir Tawil"
          continent: "Afrique"
          ocean: "n/a"
          superficie: "? km^2"
          population: "?"
          filters: [
            1, 3, 4, 8, 11
          ]
          coordinates: "21° 52´ 14´´ N33° 44´ 14´´ Est"
          influence:
            economical: [ 2, 4 ]
            political: [ 1, 2, 3, 4 ]
            socioculturel: [ 3, 5, 7 ]
          reasons:[ 2, 4, 5, 6, 7, 8, 11, 13, 15 ]
        }
        {
          id: 10
          name: "Zone coréenne démilitarisée"
          continent: "Asie"
          ocean: "n/a"
          superficie: "<80 km^2"
          population: "0"
          filters: [
            4, 7, 9, 12
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 1, 2, 3, 4 ]
            socioculturel: [ 3, 5, 7 ]
          reasons:[ 2, 4, 5, 6, 7, 8, 11, 13, 15 ]
        }
        {
          id: 11
          name: "Neutral strip of Louisiana"
          continent: "Amérique centrale"
          ocean: "n/a"
          superficie: "? km^2"
          population: "?"
          filters: [
            6, 9, 10, 12
          ]
          coordinates: ""
          influence:
            economical: [ 1, 3, 4 ]
            political: [ 1, 2, 3 ]
            socioculturel: [ 1, 2, 5, 7 ]
          reasons: [ 1, 3, 4, 5, 6, 7, 9, 10, 13, 15 ]
        }
        {
          id: 12
          name: "Oklahoma Panhandle"
          continent: "Amérique centrale"
          ocean: "n/a"
          superficie: "1200 km^2"
          population: "27000"
          filters: [
          ]
          coordinates: ""
          influence:
            economical: [ 1, 3, 4 ]
            political: [ 1, 2, 3 ]
            socioculturel: [ 1, 2, 5, 7 ]
          reasons: [ 1, 3, 4, 5, 6, 7, 9, 10, 13, 15 ]
        }
        {
          id: 13
          name: "Fort Tongue sands"
          continent: "n/a"
          ocean: "Atlantique"
          superficie: "200 km^2"
          population: "0"
          filters: [
            3, 5, 6, 8, 12
          ]
          coordinates: ""
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1, 3, 4 ]
            socioculturel: [ 1, 2, 4, 5, 6, 7, 8 ]
          reasons: [ 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16 ]
        }
        {
          id: 14
          name: "Fort sunk head"
          continent: "n/a"
          ocean: "Atlantique"
          superficie: "200 m^2"
          population: "0"
          filters: [
            3, 5, 6, 8, 12
          ]
          coordinates: ""
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1, 3, 4 ]
            socioculturel: [ 1, 2, 4, 5, 6, 7, 8 ]
          reasons: [ 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16 ]
        }
        {
          id: 15
          name: "Fort red sands"
          continent: "n/a"
          ocean: "Atlantique"
          superficie: "100 km^2"
          population: "0"
          filters: [
            3, 5, 6, 8, 12
          ]
          coordinates: "51° 28′ 06′′ N 0° 59′ 06′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1, 3, 4 ]
            socioculturel: [ 1, 2, 4, 5, 6, 7, 8 ]
          reasons: [ 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16 ]
        }
        {
          id: 16
          name: "Fort bull sand"
          continent: "n/a"
          ocean: "Atlantique"
          superficie: "200 m^2"
          population: "0"
          filters: [
            3, 5, 6, 8, 12
          ]
          coordinates: "51° 28′ 06′′ N 0° 59′ 06′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1, 3, 4 ]
            socioculturel: [ 1, 2, 4, 5, 6, 7, 8 ]
          reasons: [ 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16 ]
        }
        {
          id: 17
          name: "Texas Tower"
          continent: "n/a"
          ocean: "Atlantique"
          superficie: "300 m^2"
          population: "0"
          filters: [
            3, 5, 6, 8, 12
          ]
          coordinates: "51° 28′ 06′′ N 0° 59′ 06′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1, 3, 4 ]
            socioculturel: [ 1, 2, 4, 5, 6, 7, 8 ]
          reasons: [ 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16 ]
        }
        {
          id: 18
          name: "plateforme pétrolière Huldra"
          continent: "n/a"
          ocean: "Atlantique"
          superficie: "300 m^2"
          population: "0"
          filters: [
            3, 5, 6, 8, 12
          ]
          coordinates: ""
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1, 3, 4 ]
            socioculturel: [ 1, 2, 4, 5, 6, 7, 8 ]
          reasons: [ 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16 ]
        }
        {
          id: 19
          name: "Fort Rough sands"
          continent: "n/a"
          ocean: "Atlantique"
          superficie: "200 m^2"
          population: "0"
          filters: [
            3, 5, 6, 8, 12
          ]
          coordinates: ""
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1, 3, 4 ]
            socioculturel: [ 1, 2, 4, 5, 6, 7, 8 ]
          reasons: [ 1, 2, 3, 5, 7, 8, 9, 10, 12, 13, 14, 15, 16 ]
        }
        {
          id: 20
          name: "Îles Spartleys 1"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "500 m^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 21
          name: "Îles Spartleys 2"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 22
          name: "Îles Spartleys 3"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 23
          name: "Îles Paraceles Rocky Island"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "16° 30 ′ N112° 00 ′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 24
          name: "Îles Spartleys 5"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "25 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 25
          name: "Îles Spartleys 6"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 26
          name: "Îles Spartleys 7"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 28
          name: "Îles Spartleys 8"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 29
          name: "Îles Spartleys 9"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "8° 38 ′ 00 ′′ N111° 55 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 30
          name: "Îles Paraceles Lincoln Island"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "<10 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "16° 30 ′ N112° 00 ′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 31
          name: "Îles Paraceles North Reef"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "40 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "16° 30 ′ N112° 00 ′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 32
          name: "Récif de Scarborough"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "20 km^2"
          population: "0"
          filters: [
            3, 4, 6, 7, 9, 11
          ]
          coordinates: "15° 11 ′ 00 ′′ N117° 46 ′ 00 ′′ E"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 33
          name: "Île de Clipperton"
          continent: "n/a"
          ocean: "Pacifique"
          superficie: "1.7 km^2"
          population: "0"
          filters: [
            3, 4,  7, 8, 11
          ]
          coordinates: "10° 18 ′ 00 ′′ N109° 13 ′ 01 ′′ O"
          influence:
            economical: [ 1, 2, 3 ]
            political: [ 1 ]
            socioculturel: [ 4, 6 ]
          reasons: [ 1, 2, 3, 5, 12, 14 ]
        }
        {
          id: 34
          name: "Svalbard 1"
          continent: "n/a"
          ocean: "Arctique"
          superficie: "? km^2"
          population: "?"
          filters: [
            1, 2, 5, 8, 11
          ]
          coordinates: "78° N16° E"
          influence:
            economical: [ 2 ]
            political: [ 4 ]
            socioculturel: [ 1, 5, 6, 8 ]
          reasons: [ 2, 8, 9, 13, 14, 16 ]
        }
        {
          id: 35
          name: "Svalbard 2"
          continent: "n/a"
          ocean: "Arctique"
          superficie: "? km^2"
          population: "?"
          filters: [
            1, 2, 5, 8, 11
          ]
          coordinates: "78° N16° E"
          influence:
            economical: [ 2 ]
            political: [ 4 ]
            socioculturel: [ 1, 5, 6, 8 ]
          reasons: [ 2, 8, 9, 13, 14, 16 ]
        }
        {
          id: 36
          name: "Svalbard 3"
          continent: "n/a"
          ocean: "Arctique"
          superficie: "? km^2"
          population: "0"
          filters: [
            1, 2, 5, 8, 11
          ]
          coordinates: "78° N16° E"
          influence:
            economical: [ 2 ]
            political: [ 4 ]
            socioculturel: [ 1, 5, 6, 8 ]
          reasons: [ 2, 8, 9, 13, 14, 16 ]
        }
    ]

    @words =
      nouns: [
        {
          french: "amour"
          latin: "amare"
        }
        {
          french: "amitié"
          latin: "amicitia"
        }
        {
          french: "beauté"
          latin: "pulchritudo"
        }
        {
          french: "célébrité"
          latin: "celebrity"
        }
        {
          french: "changement"
          latin: "recensere"
        }
        {
          french: "compassion"
          latin: "motus"
        }
        {
          french: "connaissance"
          latin: "cognitio"
        }
        {
          french: "courage"
          latin: "fortitudo"
        }
        {
          french: "détermination"
          latin: "arbitrium"
        }
        {
          french: "dieu"
          latin: "deus"
        }
        {
          french: "eau"
          latin: "aqua"
        }
        {
          french: "épée"
          latin: "gladio"
        }
        {
          french: "espoir"
          latin: "spem"
        }
        {
          french: "famille"
          latin: "genus"
        }
        {
          french: "feu"
          latin: "ignis"
        }
        {
          french: "foi"
          latin: "fidei"
        }
        {
          french: "foyer"
          latin: "domum"
        }
        {
          french: "glace"
          latin: "glaciem"
        }
        {
          french: "joie"
          latin: "gaudium"
        }
        {
          french: "lumière"
          latin: "lux"
        }
        {
          french: "mémoire"
          latin: "memoriae"
        }
        {
          french: "mer"
          latin: "mare"
        }
        {
          french: "mot"
          latin: "sermo"
        }
        {
          french: "nom"
          latin: "nomine"
        }
        {
          french: "pays"
          latin: "patriam"
        }
        {
          french: "pardon"
          latin: "remissio"
        }
        {
          french: "roi"
          latin: "rex"
        }
        {
          french: "sort"
          latin: "fate"
        }
        {
          french: "stabilité"
          latin: "statum"
        }
        {
          french: "terre"
          latin: "terra"
        }
        {
          french: "vérité"
          latin: "verum"
        }
        {
          french: "vengeance"
          latin: "vindicta"
        }
        {
          french: "vertu"
          latin: "virtute"
        }
        {
          french: "vent"
          latin: "ventus"
        }
        {
          french: "vie"
          latin: "vitae"
        }
        {
          french: "victoire"
          latin: "uictoria"
        }
      ]
      verbs: [ ]
      pronouns: [ ]

    @politicalSystems = {
      "République": {
        name: "République"
        types: [
          "Présidentielle"
          "Parlementaire"
          "Parti unique"
          "Sociocrate"
        ]
        names: [
          "respublika"
        ]
        gender: "F"
      }
      "Monarchie": {
        name: "Monarchie"
        types: [
          "Parlementaire"
          "Absolue"
          "Constitutionnelle"
        ]
        names: [
          "harmonic"
          "Rex paulo"
          "Rex wooden"
        ]
        gender: "F"
      }
      "Gouvernement autoritaire": {
        name: "Gouvernement autoritaire"
        types: [
          "Dictatoriale"
          "Totalitaire"
          "Éco-anarchique"
        ]
        names: [
          "Little ductor"
          "t.o.r."
          "taar"
        ]
        gender: "M"
      }
      "Gouvernement religieux": {
        name: "Gouvernement religieux"
        types: [
          "Califat"
          "Sultanat"
          "Fanatisme"
        ]
        names: [
          "Kredo"
          "deuz"
          "abrahkadabra"
        ]
        gender: "M"
      }
    }

    @titles = [
      {
        name:
          male: "Roi"
          female: "Reine"
          variable_1: "firstName"
          secondPart: "1er"
        systems: [
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
          @politicalSystems["Gouvernement religieux"]
        ]
      }
      {
        name:
          male: "Président"
          female: "Présidente"
          variable_1: "lastName"
        systems: [
          @politicalSystems["République"]
          @politicalSystems["Gouvernement autoritaire"]
        ]
      }
      {
        name:
          male: "Empereur"
          female: "Impératrice"
          variable_1: "nickname"
        systems: [
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
        ]
      }
      {
        name:
          male: "Seigneur"
          female: "Dame"
        systems: [
          @politicalSystems["République"]
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
          @politicalSystems["Gouvernement religieux"]
        ]
      }
      {
        name:
          male: "Dictateur"
          female: "Dictatrice"
          variable_1: "lastName"
        systems: [
          @politicalSystems["République"]
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
          @politicalSystems["Gouvernement religieux"]
        ]
      }
      {
        name:
          male: "Leader"
          female: "Leader"
        systems: [
          @politicalSystems["République"]
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
          @politicalSystems["Gouvernement religieux"]
        ]
      }
      {
        name:
          male: "Général"
          female: "Général"
          variable_1: "lastName"
        systems: [
          @politicalSystems["République"]
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
          @politicalSystems["Gouvernement religieux"]
        ]
      }
      {
        name:
          male: "Maréchal"
          female: "Maréchal"
          variable_1: "lastName"
        systems: [
          @politicalSystems["République"]
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
          @politicalSystems["Gouvernement religieux"]
        ]
      }
      {
        name:
          male: "Amiral"
          female: "Amiral"
          variable_1: "lastName"
        systems: [
          @politicalSystems["République"]
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
          @politicalSystems["Gouvernement religieux"]
        ]
      }
      {
        name:
          male: "Duc"
          female: "Duchesse"
          variable_1: "lastName"
          secondPart: "de"
          variable_2: "nation.name"
        systems: [
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
        ]
      }
    ]

  # 2/ choix en fonction de la politique
  # REPUBLIQUE MONARCHIE AUTORITAIRE RELIGIEUX
  # respublika harmonic Little ductor Kredo
  # Rex paulo t.o.r deuz
  # Rex wooden taar Abrahkadabra
  # Surnom + tor



  # 3/ territoire
  # Surnomland surnom island Nomland Prenom nom
  # 1,2,4,6,7,8,9,1
  # 0,11,12,13,14,
  # 15,16,17,18,19
  # ,20
  # Icenomland Surnom strip À FINIR À FINIR
  # 1,2,3,5,34,35,
  # 36
    return
