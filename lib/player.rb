class Player

  attr_accessor :player_name
  attr_accessor :forme

  def initialize(name, forme)
    @name = name
    @forme = forme
  end

  def choice (line, column)
    return "#{line}#{column}"
  end

end
