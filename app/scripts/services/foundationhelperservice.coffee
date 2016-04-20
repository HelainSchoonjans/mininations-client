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

    @economicalReasons = [
      "pour gagner des sous"
      "pour cacher des sous"
      "pour garder des sous"
      "pour partager des sous"
    ]
    @politicalReasons = [
      "pour le pouvoir"
      "par conscience politique"
      "par rébellion politique"
      "par idéal politique"
    ]
    @culturalReasons = [
      "pour être libre"
      "pour perdre son anonymat"
      "pour être utile"
      "par plaisir"
      "par utopie"
      "par opportunité"
      "par revendication"
      "pour être seul"
    ]
    # @territoryFilters = {
    #   "désert": [
    #
    #   ]
    #   "glace": [
    #
    #   ]
    #   "isolé": [
    #
    #   ]
    #   "chaud": [
    #
    #   ]
    #   "froid": [
    #
    #   ]
    #   "humide": [
    #
    #   ]
    #   "tropical": [
    #
    #   ]
    #   "abandonné": [
    #
    #   ]
    #   "abandonné": [
    #
    #   ]
    #   "disputé/contesté": [
    #
    #   ]
    #   "peuplé": [
    #
    #   ]
    #   "naturel": [
    #
    #   ]
    #   "construit": [
    #
    #   ]
    # }
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
            1, 2, 3, 11
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 2 ]
            socioculturel: [ 1, 6, 7, 8 ]
        }
        {
          id: 2
          name: "Antartique 2"
          continent: "Antartique"
          ocean: "n/a"
          superficie: "<1500 km^2"
          population: "0"
          filters: [
            1, 2, 3, 11
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 2 ]
            socioculturel: [ 1, 6, 7, 8 ]
        }
        {
          id: 3
          name: "Antartique 3"
          continent: "Antartique"
          ocean: "n/a"
          superficie: "<100 km^2"
          population: "0"
          filters: [
            1, 2, 3, 11
          ]
          coordinates: ""
          influence:
            economical: [ 2, 4 ]
            political: [ 2 ]
            socioculturel: [ 1, 6, 7, 8 ]
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
        }
        # TODO add more territories
    ]
    @territories = [
      "Antartique 1"
      "Antartique 2"
      "Antartique 3"
      "Moresnet neutre"
      "Erik the red's land"
      "Saudi Iraki"
      "Saudi Kuwaiti"
      "Somaliland neutre"
      "Bir Tawil"
      "Zone coréenne démilitarisée"
      "Neutral strip of Louisiana"
      "Oklahoma Panhandle"
      "Fort Tongue sands"
      "Fort sunk head"
      "Fort red sands"
      "Fort bull sand"
      "Texas Tower plateforme pétrolière Huldra"
      "Fort Rough sands"
      "Îles spartleys 1"
      "Îles spartleys 2"
      "Îles spartleys 3"
      "Îles Paraceles Rocky Island"
      "Îles spartleys 5"
      "Îles spartleys 6"
      "Îles spartleys 7"
      "Îles spartleys 8"
      "Îles Spartleys half moon shoal"
      "Îles spartleys 9"
      "Îles Paraceles Lincoln Island"
      "Îles Paraceles North Reef"
      "Récif de Scarborough"
      "Île de Clipperton"
      "Svalbard 1"
      "Svalbard 2"
      "Svalbard 3"
    ]

    # need to take into account the gender, the suffixes, or the
    # different names might be needed / or not.
    @titles = [
      "Roi"
      "President"
      "Empereur"
      "Seigneur"
    ]
    @politicalSystems = {
      "République"
      "Monarchie"
      "Gouvernement autoritaire"
      "Gouvernement religieux"
    }
    @politicalSystem = {
      "République": [
        "Présidentielle"
        "Parlementaire"
        "Parti unique"
        "Sociocrate"
      ]
      "Monarchie": [
        "Parlementaire"
        "Absolue"
        "Constitutionnelle"
      ]
      "Gouvernement autoritaire": [
        "Dictatoriale"
        "Totalitaire"
        "Éco-anarchique"
      ]
      "Gouvernement religieux": [
        "Califat"
        "Sultanat"
        "Fanatisme"
      ]
    }

    @suggestions = {
      "pour gagner des sous": [
        "monimaker"
        "illionar"
        "billy"
        "Jacque"
      ]
      "pour cacher des sous": [
        "hiden"
        "unseecity"
        "cashcash"
        "Potte"
      ]
      "pour garder des sous": [
        "kipmoney"
        "goldkiper"
        "keptoland"
        "pixou"
      ]
      "pour partager des sous": [
        "cher"
        "nocapito"
        "novum"
        "Mont pressieux sossiokool"
      ]
      "pour le pouvoir": [
        "powerland"
        "mailland"
        "baratin"
        "magna"
      ]
      "par conscience politique": [
        "veritas"
        "wakywaky"
        "cimer"
      ]
      "par rébellion politique": [
        "rebeland"
        "kaos"
        "bellior"
      ]
      "par idéal politique": [
        "veritass"
        "novum"
        "bizounours"
      ]
      "pour être libre": [
        "libertas"
        "fridhome"
        "unchained"
      ]
      "pour perdre son anonymat": [
        "ekla"
        "famousse"
        "utopia"
      ]
      "pour être utile": [
        "Siri"
        "lovaland"
        "chance"
      ]
      "par plaisir": [
        "Desireland"
        "wiktori"
      ]
      "par utopie": [
        "newland"
        "nihil"
      ]
      "par opportunité": [
        "wainot"
      ]
      "par revendication": [
        "kaos"
      ]
      "pour être seul": [
        "sololand"
        "beatasolitu"
      ]
    }

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
    return
