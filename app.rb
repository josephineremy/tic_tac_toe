require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/boardcase'
require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/show'
require_relative 'lib/application'


launch = Application.new

# Description du jeu:
#
# "Salut et bienvenue dans mon morpion de la mort, ce jeu est designé pour être joué par deux personnes. Etes-vous bien deux?"
# >OUI (c'est bon vous pouvez jouer) --> On passe à la prochaine étape
# <NON (revenez quand vous serez deux) --> EXIT
#
# Joueur 1: Quel est ton petit nom?
# Joueur 2: Quel est ton petit nom?
#
# On crée deux players
#
# Voici les instructions:
# "bla-bla-bla"
#
#
# "Commençons la partie !! Oui mais par qui? Celui qui aura le plus grand nombre au lancer de dés commence."
# Joueur 1, vas y
# Joueur 2, vas y
#
#
# Joueur X, choisis une case entre 1 et 9
# Joueur O, choisis une case entre 1 et 9 (si c'est celui de X, message d'erreur)
# Joueur X, choisis une case entre 1 et 9 (si c'est une case déjà jouée, message d'erreur)
# Joueur O, choisis une case entre 1 et 9 (si c'est une case déjà jouée, message d'erreur)
#
#
# Jusqu'à la fin, soit un gagnant, soit pas de gagnant/perdant.
#
# Vouslez-vous rejouer?
