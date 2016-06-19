'use strict'

###*
 # @ngdoc service
 # @name mininationsApp.images
 # @description
 # # images
 # Constant in the mininationsApp.
###
angular.module 'mininationsApp'
  .constant 'images',
    divisions: [
        name: "full"
        src: "full.png"
        alt: "No division"
      ,
        name: "halfVertical"
        src: "halfVertical.png"
        alt: "Vertical division"
      ,
        name: "halfHorizontal"
        src: "halfHorizontal.png"
        alt: "Horizontal division"
      ,
        name: "fiveSixHorizontal"
        src: "fiveSixHorizontal.png"
        alt: "Ten horizontal divisions"
      ,
        name: "threeThreeVertical"
        src: "threeThreeVertical.png"
        alt: "Five horizontal divisions"
      ,
        name: "twoOneVertical"
        src: "twoOneVertical.png"
        alt: "Two vertical divisions"
      ,
        name: "twoOneHorizontal"
        src: "twoOneHorizontal.png"
        alt: "Two horizontal divisions"
      ,
        name: "oneOneDiagonal"
        src: "diagonal.png"
        alt: "Diagonal division"
      ,
        name: "fourSquares"
        src: "fourSquares.png"
        alt: "Four squares division"
      ,
        name: "twoDiagonals"
        src: "twoDiagonals.png"
        alt: "Two diagonals divisions"
    ]
    rabattements: [
      name: "aucun"
      src: "aucun.png"
      alt: "None"
    ,
      name: "croixGauche"
      src: "croixGauche.png"
      alt: "Left-centered cross"
    ,
      name: "croixCentre"
      src: "croixCentre.png"
      alt: "Centered cross"
    ,
      name: "croisé"
      src: "crossed.png"
      alt: "Diagonal"
    ,
      name: "quart"
      src: "quart.png"
      alt: "quart"
    ,
      name: "coin"
      src: "coin.png"
      alt: "Corner"
    ,
      name: "carré"
      src: "square.png"
      alt: "Square"
    ,
      name: "triangle"
      src: "triangle.png"
      alt: "Triangle"
    ,
      name: "diagonale"
      src: "diagonale.png"
      alt: "Diagonale"
    ,
      name: "lozange"
      src: "lozange.png"
      alt: "Lozange"
    ,
      name: "cercle"
      src: "cercle.png"
      alt: "Circle"
    ,
      name: "diagonale inversée"
      src: "inversedDiagonal.png"
      alt: "Inversed diagonal"
    ]
