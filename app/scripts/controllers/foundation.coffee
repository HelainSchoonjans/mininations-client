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

    # TODO need to take into account the gender, the suffixes, or the
    # different names might be needed / or not.
    # TODO incomplete
    @titres = [
      "Roi"
      "President"
      "Empereur"
      "Seigneur"
    ]
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
    #@suggestions = {}

#     ECONOMIQUE
# GAGNER DES SOUS CACHER DES SOUS GARDER DES SOUS PARTAGER DES SOUS
# monimaker hiden kipmoney cher
# illionar unseecity goldkiper nocapito
# billy cashcash keptoland novum
# Jacque Potte pixou Mont pressieux sossiokool

# POLITIQUE
# POUR LE POUVOIR PAR CONSCIENCE PAR REBELLION PAR IDEAL POL
# powerland veritas rebeland veritass
# mailland wakywaky kaos novum
# baratin cimer bellior bizounours
# magna

# SOCIALE ET CULTURELLES
# ETRE
# LIBRE
# libertas ekla Siri Desireland newland wainot kaos sololand
# fridhome famousse lovaland wiktori nihil beatasolitu
# unchained utopia chance
# CONTRE
# ANONYM.
# ETRE
# UTILE
# PAR
# PLAISIR
# PAR
# UTOPIE
# OPPOR-
# TUNITE
# REVENDI-
# CATION
# ETRE
# SEUL
# brutopie fortunam

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

    @currentNation = {}

    @stepFieldMapping =
      0: "",
      1: "",
      2: "",
      3: "",
      4: ""

    @maximumStep = 9
    @currentStep = 0

    @isStep = (step) ->
      step == @currentStep

    @next = (data, valid = true) ->
      if valid && @currentStep < @maximumStep
        @currentNation[@currentStep] = data
        @currentStep = @currentStep + 1

    @previous = () ->
      if @currentStep > 0
       @currentNation[@currentStep] = null
       @currentStep = @currentStep - 1

    return
