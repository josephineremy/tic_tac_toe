class Application
attr_accessor :partie

  def initialize
  # méthode qui fait le "perform" de la partie
    partie=Game.new(@player1, @player2)
    partie.turn
    partie.game_end
  end

end
