class Board_Case


attr_accessor :line
attr_accessor :column
attr_accessor :name_case
attr_accessor :array_case
attr_accessor :inside_case

# initialiser les cases qui seront des arrays avec deux éléments
#(par exemple [A,2]) de l'array tableau

  def initialize(line, column)
    @line = line
    @column = column
    @name_case = "#{line}#{column}"
    @array_case = [line, column]
    @inside_case = []
  end




end
