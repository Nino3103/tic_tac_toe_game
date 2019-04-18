require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board_all'
require_relative 'lib/board_case'


my_game = Game.new("Jean", "Théo")


binding.pry
