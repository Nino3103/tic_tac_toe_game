class Game

  def initialize(player_1_name,player_2_name)
    @player_1 = Player.new(player_1_name, "X")
    @player_2 = Player.new(player_2_name, "O")
    @board = Board.new(9)
end

end 
