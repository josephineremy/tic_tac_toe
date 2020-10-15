class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :name_case, :content

  def initialize(name_case, content)
  # initalisation des cases avec leur nom et leur valeur
    @name_case = name_case
		@content = content
  end

end
