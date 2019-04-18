class Board_Case



# initialiser les cases qui seront des arrays avec deux éléments
#(par exemple [A,2]) de l'array tableau

  def initialize(line, column)
    @line = line
    @column = column
    @name_case = "#{line}#{column}"
    @array_case = [line, column]
  end


end
