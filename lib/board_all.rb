require 'bundler'
Bundler.require
require_relative 'board_case'
require_relative 'player'




class Board

  def initialize(number_of_cases = 9)
    array_name_cases = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    @board_array = array_name_cases.map{|element| Board_Case.new(element[0], element[1])}
  end


  def  fill(player,choice_of_case)

  @board_array.map{|element| element.inside_case = [player.forme] if element.name_case == choice_of_case}

  end

  # methode utile pour savoir si un array a les mêmes éléments, utile pour la methode is_a_win?

  def all_equal?(arr)
      arr.uniq.size <= 1
  end

  # return true if it  is a win and false if no victory yet
  def is_a_win?


    all_equal?(@board_array.select{|element| element.column == "A"}) ||
    all_equal?(@board_array.select{|element| element.column == "B"}) == "true" ||
    all_equal?(@board_array.select{|element| element.column == "C"}) == "true" ||
    # line

    all_equal?(@board_array.select{|element| element.line == "1"}) == "true" ||
    all_equal?(@board_array.select{|element| element.line == "2"}) == "true" ||
    all_equal?(@board_array.select{|element| element.line == "3"}) == "true" ||

    # diagonal

    all_equal?(@board_array.select{|element| element.name_case == "A1" || element.name_case == "B2"|| element.name_case == "C3"}) == "true" ||
    all_equal?(@board_array.select{|element| element.name_case == "A3" || element.name_case == "B2"|| element.name_case == "C1"}) == "true"


  end

  

end
tableau = Board.new
player1 = Player.new("Jean", "X")
player2 = Player.new("Théo", "O")


binding.pry
