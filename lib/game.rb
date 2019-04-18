class Game

attr_accessor :board
attr_accessor :player_1
attr_accessor :player_2
attr_accessor :players

  def initialize(player_1_name,player_2_name)
    @player_1 = Player.new(player_1_name, "X")
    @player_2 = Player.new(player_2_name, "O")
    @players = [@player1, @player2]
    @board = Board.new(9)
  end




  def select_case (line, column)
    return "#{line}#{mark}"
  end

  # def fill(player, case_name)
def  fill(player)
  return player.name
  #  @board.map{|element| element.inside_case << player.forme if element.name_case = case_name }
end

end
