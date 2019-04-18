require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board_all'
require_relative 'lib/board_case'
require_relative 'lib/show_board'
require_relative 'lib/application.rb'



my_game = Game.new("Joueur 1", "Joueur 2")

# Game loop
until my_game.is_finished?
  my_game.show_board
  gets.chomp
  # my_game.new_players_in_sight
  # gets.chomp
  # my_game.menu
  # my_game.menu_choice
  # gets.chomp
  # my_game.enemies_attack
  # gets.chomp
end
my_game.end_game

binding.pry
