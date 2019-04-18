class Board

  def initialize(number_of_cases = 9)
    array_name_cases = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    @board_array = array_name_cases.map{|element| Board_Case.new(element[0], element[1])}

  end

  def show_board
    puts @board_array
  end

end
