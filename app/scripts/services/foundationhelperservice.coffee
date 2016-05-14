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

    @genders = [
      id: "male"
      value: "Homme"
    ,
      id: "female"
      value: "Femme"
    ]

    @reasons =
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
          image: "01-antarctique1.jpg"
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
          image: "02-antarctique2.jpg"
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
          image: "03-antarctique3.jpg"
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
          image: "05-erik-thered-land.jpg"
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
          image: "06-saudi-iraki.jpg"
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
          image: "07-saudi-kuwaiti.jpg"
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
          image: "08-somaliland.jpg"
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
          image: "09-bir-tawil.jpg"
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
          image: "10-ZCM.jpg"
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
          image: "11-neutralstrip-louisiana.jpg"
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
          image: "12-oklahoma-panhandle.jpg"
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
          image: "13-fort-tongue-sand.jpg"
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
          image: "14-fort-sunkhead.jpg"
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
          image: "15-fort-red-sand.jpg"
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
          image: "16-fort-bull-sand.jpg"
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
          image: "17-texas-tower.jpg"
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
          image: "18-plateforme-huldra.jpg"
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
          image: "19-fort-rough-sands.jpg"
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
          image: "20-spartleys1.jpg"
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
          image: "21-spartleys2.jpg"
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
          image: "22-spartleys3.jpg"
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
          image: "23-paracel-rocky.jpg"
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
          image: "24-sparleys5.jpg"
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
          image: "25-sparleys6.jpg"
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
          image: "26-sparleys7.jpg"
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
          image: "27-sparleys8.jpg"
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
          image: "29-sparleys9.jpg"
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
          image: "30-paracel-lincoln.jpg"
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
          image: "31-paracel-northreef.jpg"
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
          image: "32-scarborough.jpg"
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
          image: "33-clipperton.jpg"
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
          image: "34-svalbard1.jpg"
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
          image: "35-svalbard2.jpg"
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
          image: "36-svalbard3.jpg"
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
          "présidentielle"
          "parlementaire"
          "parti unique"
          "sociocrate"
        ]
        names: [
          "respublika"
        ]
        gender: "F"
      }
      "Monarchie": {
        name: "Monarchie"
        types: [
          "parlementaire"
          "absolue"
          "constitutionnelle"
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
          "dictatoriale"
          "totalitaire"
          "éco-anarchique"
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
          "califat"
          "sultanat"
          "fanatisme"
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
          genderedSecondPart:
            male: " 1er "
            female: " 1ère "
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
          secondPart: " de "
          variable_2: "nation.name"
        systems: [
          @politicalSystems["Monarchie"]
          @politicalSystems["Gouvernement autoritaire"]
        ]
      }
    ]

    return
