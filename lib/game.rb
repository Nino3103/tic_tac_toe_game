class Game

attr_accessor :board
attr_accessor :player_1
attr_accessor :player_2
attr_accessor :players
attr_accessor :all_moves

  def initialize(player_1_name,player_2_name)
    @player_1 = Player.new(player_1_name, "X")
    @player_2 = Player.new(player_2_name, "O")
    @players = [@player_1, @player_2]
    @board = Board.new(9)
    @all_moves = []
  end


  def valide_move?(move)
    # le move n'appartient pas aux moves précédents
    # retourne true si le move est valide (et donc n'appartient pas au tableau des moves précédents)
    tab = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    !@all_moves.include?(move) && tab.include?(move)
  end

  def is_finished?
    @board.is_a_win?
  end

  def menu
    puts "Quelle case voulez-vous jouer ?"
    move = gets.chomp.to_s

    # on s'assure que le coup n'a pas déjà été joué
    until valide_move?(move)
      puts "Ce coup a déjà été joué ou sort du cadre !"
      print ">>>"
      move = gets.chomp.to_s
    end

    @board.fill(player,move)

  end


  def select_case (line, column)
    return "#{line}#{mark}"
  end

  # def fill(player, case_name)


end
