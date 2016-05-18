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

    @steps =
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
        next: "heraldry"
      heraldry:
        previous: "flag"
        next: "render"
      render:
        previous: "heraldry"

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
          advantages: [
            "dernière terra nullius"
            "tranquillité"
            "isolé"
            "nature"
          ]
          disadvantages: [
            "climat extreme"
            "froid"
            "solitude"
            "accessibilité"
          ]
          description: "De facto, il s’agit au début du xxie siècle de la dernière terra nullius de la planète, dans la mesure où certaines de ses
terres peuvent être considérées comme habitables. (De jure, l’Antarctique est soumis à un statut international qui lui est particulier, avec le Traité sur
l’Antarctique du 1er décembre 1959). Il reste une partie de l’Antarctique qui n’est revendiquée par aucun État, la Terre Marie Byrd."
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
          advantages: [
            "dernière terra nullius"
            "tranquillité"
            "isolé"
            "nature"
          ]
          disadvantages: [
            "climat extreme"
            "froid"
            "solitude"
            "accessibilité"
          ]
          description: "De facto, il s’agit au début du xxie siècle de la dernière terra nullius de la planète, dans la mesure où certaines de ses
          terres peuvent être considérées comme habitables. (De jure, l’Antarctique est soumis à un statut international qui lui est particulier, avec le Traité sur
          l’Antarctique du 1er décembre 1959). Il reste une partie de l’Antarctique qui n’est revendiquée par aucun État, la Terre Marie Byrd."
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
          advantages: [
            "dernière terra nullius"
            "tranquillité"
            "isolé"
            "nature"
          ]
          disadvantages: [
            "climat extreme"
            "froid"
            "solitude"
            "accessibilité"
          ]
          description: "De facto, il s’agit au début du xxie siècle de la dernière terra nullius de la planète, dans la mesure où certaines de ses
          terres peuvent être considérées comme habitables. (De jure, l’Antarctique est soumis à un statut international qui lui est particulier, avec le Traité sur
          l’Antarctique du 1er décembre 1959). Il reste une partie de l’Antarctique qui n’est revendiquée par aucun État, la Terre Marie Byrd."
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
          advantages: [
            "en Europe"
            "découpe contesté"
            "peuplé"
          ]
          disadvantages: [
            "frontière invisible"
            "peuplé"
            "appartient à la Belgique"
          ]
          description: "minuscule territoire européen de 1816 à 1919 situé au sud du point où les frontières de l’Allemagne des Pays­Bas, et depuis 1830 de la Belgique. Après l’annexion à la Belgique en
          1920, la commune prit le nom de La Calamine ou Kelmis ; elle fusionne en 1977 avec Neu­Moresnet et Hergenrath."
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
          advantages: [
            "tranquilité"
            "son histoire"
            "son nom"
            "terre revendiquée"
            "territoire inutilisé"
            "nature"
          ]
          disadvantages: [
            "solitude"
            "climat très froid"
            "appartient à la Norvège"
          ]
          description: "Le Groenland oriental, ou Terre d’Erik le Rouge (en norvégien : Eirik­Raudes­Land), fut le nom donné par le gouvernement norvégien à une partie de la côte du Groenland occupé par
          la Norvège du 27 juin 1931 au 5 avril 1933. Elle tire sa dénomination d’Erik le Rouge, fondateur des premiers établissements norvégiens au Groenland auXe siècle."
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
          advantages: [
            "chaud"
            "paysage"
            "couleurs"
            "pétrole"
            "contesté"
            "peu de gens"
          ]
          disadvantages: [
            "zone tendue"
            "guerre"
            "appartient à l'Irak"
          ]
          description: "Zone pour laquelle la frontière entre l'Irak et l'Arabie Saoudite n’était pas clairement définie. Pour des raisons inconnues, le traité n'est pas déposé auprès de l'Organisation des
          Nations unies (ONU) et aucun pays, en dehors de l’Irak et de l’Arabie saoudite, ne reçoit de notification du changement ni ne publie de cartes avec les nouvelles frontières."
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
          advantages: [
            "chaud"
            "paysage"
            "couleurs"
            "pétrole"
            "contesté"
            "prés de la mer"
          ]
          disadvantages: [
            "zone tendue"
            "guerre"
            "appartient au koweit"
            "peuplé"
          ]
          description: "La zone neutre Koweït­Arabie saoudite, aussi connue comme Zone divisée, fut une zone de 5 770 km2 entre les frontières de l'Arabie saoudite et du Koweït qui fut laissée indéfinie
          quand la frontière entre ces deux pays fut établie par le protocole d'Uqair du 2 décembre 1922. La ratification suivit le 18 janvier 1970 et le traité fut publié au sein de la Gazette
          officielle du Koweït le 25 janvier 1970."
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
          advantages: [
            "chaud"
            "paysage"
            "couleurs"
            "prés de la mer"
          ]
          disadvantages: [
            "situation tendue"
            "(très) peuplé"
          ]
          description: "«L’indépendance, nous l’avons conquise face aux colons britanniques en 1960 ! explique­t­elle avec le visage sévère d’une maîtresse d’école. En 1991, nous nous sommes sé­pa­rés
          de la Somalie, vous entendez ? En 1991, nous avons récupéré notre Etat souverain.»
          Edna Adan Ismail"
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
          advantages: [
            "chaud"
            "paysage"
            "couleurs"
            "pétrole"
            "contesté"
            "prés de la mer"
          ]
          disadvantages: [
            "situation tendue"
            "guerre"
            "appartient au Koweit"
            "peuplé"
          ]
          description: "Région située à la frontière entre Égypte et Soudan, est la seule région du monde qui ne soit revendiquée par aucun État. Cette situation s’explique par le très faible intérêt de ce
          territoire désertique et par la crainte des deux pays riverains de faire perdre du poids à d’autres revendications territoriales s’ils venaient à l’administrer."
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
          advantages: [
            "le climat"
            "l'engagement politique"
          ]
          disadvantages: [
            "climat politique tendu"
            "dangereux"
            "La Corée du Nord"
          ]
          description: "Créée le 23 mars 1953 c'est une étroite bande de terre servant de zone tampon entre la Corée du Nord et la Corée du Sud. D’une longueur de 248 km pour environ 4 km de large
          située de part et d’autre de la frontière entre les deux pays, elle coupe la péninsule coréenne suivant approximativement le 38e parallèle qui formait la ligne de démarcation
          intercoréenne avant le conflit."
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
          advantages: [
            "climat"
            "musique"
            "décors"
            "lieux historiques"
            "lieux disputés"
          ]
          disadvantages: [
            "frontière du Texas"
            "habité"
            "danger de tempête"
            "appartient juridiquement à un état"
            "il faut le revendiquer"
          ]
          description: "La bande neutre de Louisiane (connu également en temps que le no man's land de Louisiane) était un lieu disputé entre le Texas espagnol et les états unis. Les deux parties de
          laissé le territoire neutre temporairement et en dehors de toute juridiction et appartient désormais à la Louisiane."
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
          advantages: [
            "peu d'habitants"
            "le nom est amusant"
            "paysage sympa"
          ]
          disadvantages: [
            "appartient juridiquement à un état"
            "revendiqué par le Texas"
            "il faut le revendiquer"
            "habité"
          ]
          description: "Cette panhandle(« queue de poêle ») comprend les comtés de Cimarron, de Texas et de Beaver. Il ne compte que 0,77 % de la population de l’État sur 8,28 % du territoire. Les
          Texans, mécontents du découpage, revendiquèrent cette bande de territoire durant les 40 années qui suivirent. Ce litige ne sera finalement réglé que le 2 mai 1890, date de la
          création du Territoire de l'Oklahoma auquel l'Oklahoma Panhandle fut intégré"
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
          advantages: [
            "tranquillité"
            "dans les eaux internationales"
            "acier protecteur"
          ]
          disadvantages: [
            "difficile d'accès"
            "difficile à ravitailler"
            "solitude"
            "à rénover"
            "humide"
          ]
          description: "le fort tongue sands fait partie des des Forts Maunsell qui étaient des petites tours fortifiées marines construites au niveau de l’estuaire de la Tamise et de la Mersey durant
          la Seconde Guerre mondiale pour protéger le Royaume­Uni de toute invasion allemande. L’armée les a abandonnés à la fin des années 1950."
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
          advantages: [
            "tranquillité"
            "dans les eaux internationales"
            "acier protecteur"
          ]
          disadvantages: [
            "difficile d'accès"
            "difficile à ravitailler"
            "solitude"
            "à rénover"
          ]
          description: "Le fort red sands fait partie des desForts Maunsell qui étaient des petites tours fortifiées marines construites au niveau de l’estuaire de la Tamise et de la Mersey durant la Seconde
          Guerre mondiale pour protéger le Royaume­Uni de toute invasion allemande. L’armée les a abandonnés à la fin des années 1950 et ils furent parfois utilisés pour d’autres activités."
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
          advantages: [
            "tranquillité"
            "dans les eaux internationales"
            "acier protecteur"
            "difficile d'accès"
          ]
          disadvantages: [
            "difficile d'accès"
            "difficile à ravitailler"
            "solitude"
            "à rénover"
            "humide"
          ]
          description: "Bull Sand Fort est le plus gros des deux forts humbers dont il fait parti. Il se situe a 2,4 km des côtes de spurn head accessible lors de la marée basse. Construit en béton armé
          extrêmement résistant en 1915 ils ont été abandonné en 1956."
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
          advantages: [
            "tranquillité"
            "dans les eaux internationales"
            "acier protecteur"
            "fait penser à Tintin"
          ]
          disadvantages: [
            "difficile d'accès"
            "difficile à ravitailler"
            "solitude"
            "à rénover"
            "humide"
          ]
          description: "Une des trois plate­formes radars installées au large et baptisées Texas Towers car construites sur le modèle des plate­formes pétrolières installées au large dans le Golfe du
          Mexique. Celle ci est la plus éloignée des côtes ; elle est installée sur un banc de sable officieusement baptisée Old Shaky installée au sud­est de New York. Elles furent
          abandonnée dans les années 60."
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
          advantages: [
            "tranquillité"
            "dans les eaux internationales"
            "acier protecteur"
            "fait penser à Tintin"
          ]
          disadvantages: [
            "difficile d'accès"
            "difficile à ravitailler"
            "solitude"
            "à rénover"
            "humide"
          ]
          description: "Une des trois plate­formes radars installées au large et baptisées Texas Towers car construites sur le modèle des plate­formes pétrolières installées au large dans le Golfe du
          Mexique. Celle ci est la plus éloignée des côtes ; elle est installée sur un banc de sable officieusement baptisée Old Shaky installée au sud­est de New York. Elles furent
          abandonnée dans les années 60."
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
          advantages: [
            "tranquillité"
            "dans les eaux internationales"
            "acier protecteur"
            "pas trop loin des côtes"
            "en bon état"
            "pas chère"
            "à acheter"
            "20 chambres"
          ]
          disadvantages: [
            "difficile à ravitailler"
            "solitude"
            "humide"
          ]
          description: "Plateforme plateforme offshore en mer du nord en bon état à vendre: 20 chambres, vue panoramique sur la mer, vaste espace pour hélicoptère pour 13 centimes d'euros. Entrée en
          service en 2001, Huldra devrait cesser ses opérations en 2014 ou 2015, date prévue pour le tarissement d'un gisement exploité par Statoil, Total, ConocoPhillips, Petoro et Talisman."
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
          advantages: [
            "tranquillité"
            "dans les eaux internationales"
            "acier protecteur"
          ]
          disadvantages: [
            "difficile d'accès"
            "difficile à ravitailer"
            "solitude"
            "à rénover"
            "humide"
          ]
          description: "Le fort Sunk head fait partie des des Forts Maunsell qui étaient des petites tours fortifiées marines construites au niveau de l’estuaire de la Tamise et de la Mersey durant la Seconde
          Guerre mondiale pour protéger le Royaume­Uni de toute invasion allemande. L’armée les a abandonnés à la fin des années 1950 et ils furent parfois utilisés pour d’autres activités."
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
          ]
          disadvantages: [
          ]
          description: ""
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Les îles n’ont pas d’eau douce et sont par conséquent inhabitables. Selon le droit maritime international, elles sont considérées comme des écueils et non des îles et, à ce titre, les
          revendications de souveraineté sur les parties émergées ne peuvent pas s’appliquer aux eaux territoriales. Chacun des pays riverains de la Mer de Chine méridionale revendique
          l’ensemble de l’archipel et les eaux afférentes, et refuse tout plan de partage. La situation est donc particulièrement complexe et tendue. Tentez votre chance !"
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Archipel de petites îles coralliennes inhabitées jusqu’en 2013, situées en mer de Chine méridionale. Les îles Paracels sont contrôlées par la Chine depuis la fin de la seconde Guerre
          mondiale. Cette dernière y maintient depuis 2014 un millier d’habitants. Cependant, comme les îles Spratleys, les Paracels font l’objet d’une importante rivalité géopolitique. Elles sont
          revendiquées par le Viêt Nam et Taïwan."
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Archipel de petites îles coralliennes inhabitées jusqu’en 2013, situées en mer de Chine méridionale. Les îles Paracels sont contrôlées par la Chine depuis la fin de la seconde Guerre
          mondiale. Cette dernière y maintient depuis 2014 un millier d’habitants. Cependant, comme les îles Spratleys, les Paracels font l’objet d’une importante rivalité géopolitique. Elles sont
          revendiquées par le Viêt Nam et Taïwan."
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "présence militaire possible"
            "requins"
          ]
          description: "Atoll de la mer de Chine méridionale revendiqué par la République populaire de Chine, les Philippines et Taïwan. Ses terres émergées de quelques hectares à marée basse ne
          culminent qu’à trois mètres d’altitude. Depuis 2012, à la suite d’une opération militaire de sa marine, l’armée chinoise occupe ce récif."
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
          advantages: [
            "chaud"
            "isolé"
            "paradisiaque"
            "inhabité"
          ]
          disadvantages: [
            "petit"
            "isolé"
            "disputé"
            "pas beaucoup d'ombre"
            "appartient à la France"
          ]
          description: "Îlot du Pacifique inhabité et difficile à aborder, l'île de Clipperton fut un temps terra nullius. Mais bien qu'il n'ait jamais connu de population française, la souveraineté française fut
          reconnue le 28 janvier 1931 par l'arbitrage de la Cour internationale et du roi Victor­Emmanuel III d'Italie. Les seuls documents écrits prouvant l’antériorité de la découverte ayant été
          les journaux de bord de Martin de Chassiron et de Michel Dubocage."
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
          advantages: [
            "territoire neutre"
            "isolé"
            "paysage pur"
            "très peu habité"
          ]
          disadvantages: [
            "Froid"
            "climat assez extrême"
          ]
          description: "Territoire norvégien autonome et démilitarisé, il n'est pas soumis à la fiscalité norvégienne. Sa superficie n'est pas incluse dans celle de la Norvège et il n'est membre ni de l'espace
          Schengen, ni de l'AELE. Le statut de neutralité des Svalbard permet à n'importe quel pays d'exploiter librement les ressources locales."
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
          advantages: [
            "territoire neutre"
            "isolé"
            "paysage pur"
            "très peu habité"
          ]
          disadvantages: [
            "Froid"
            "climat assez extrême"
          ]
          description: "Territoire norvégien autonome et démilitarisé, il n'est pas soumis à la fiscalité norvégienne. Sa superficie n'est pas incluse dans celle de la Norvège et il n'est membre ni de l'espace
          Schengen, ni de l'AELE. Le statut de neutralité des Svalbard permet à n'importe quel pays d'exploiter librement les ressources locales."
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
          advantages: [
            "territoire neutre"
            "isolé"
            "paysage pur"
            "très peu habité"
          ]
          disadvantages: [
            "Froid"
            "climat assez extrême"
          ]
          description: "Territoire norvégien autonome et démilitarisé, il n'est pas soumis à la fiscalité norvégienne. Sa superficie n'est pas incluse dans celle de la Norvège et il n'est membre ni de l'espace
          Schengen, ni de l'AELE. Le statut de neutralité des Svalbard permet à n'importe quel pays d'exploiter librement les ressources locales."
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
