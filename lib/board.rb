require 'pry'
class Board
  attr_accessor :boardcase_array, :cell, :count_turn

  def initialize
    # Création de 9 instances BoardCases et rangées dans un array.
      @boardcase_array=[]
      @count_turn=0
      @a1 = BoardCase.new("a1", "1")
      @a2 = BoardCase.new("a2", "2")
      @a3 = BoardCase.new("a3", "3")
      @b1 = BoardCase.new("b1", "4")
      @b2 = BoardCase.new("b2", "5")
      @b3 = BoardCase.new("b3", "6")
      @c1 = BoardCase.new("c1", "7")
      @c2 = BoardCase.new("c2", "8")
      @c3 = BoardCase.new("c3", "9")
      @boardcase_array << @a1 << @a2 << @a3 << @b1 << @b2 << @b3 << @c1 << @c2 << @c3
  end

  def drawing_board
    # affichage du plateau de jeu
    @cell = @boardcase_array.map{|x| x.content}
      puts "\n"
      puts "-" * 30
      puts "\n"
      puts "Voici l'état de la partie:"
      puts "\n"
      puts "-" * 30
      puts "\n"
      puts "#{@cell[0]} | #{@cell[1]} | #{@cell[2]}"
      puts "--|---|--"
      puts "#{@cell[3]} | #{@cell[4]} | #{@cell[5]}"
      puts "--|---|--"
      puts "#{@cell[6]} | #{@cell[7]} | #{@cell[8]}"
  end

  def victory?
    # vérification du plateau si celui-ci comporte une combinaison gagnante ou non.
    if (@cell[0] == @cell[1] && @cell[0] == @cell[2]) || (@cell[3] == @cell[4] && @cell[3] == @cell[5]) || (@cell[6] == @cell[7] && @cell[6] == @cell[8] ) || (@cell[0] == @cell[3] && @cell[0] == @cell[6]) || (@cell[1] == @cell[4] && @cell[1] == @cell[7]) || (@cell[2] == @cell[5] && @cell[2] == @cell[8]) ||( @cell[0] == @cell[4] && @cell[0] == @cell[8]) || (@cell[2] == @cell[4] && @cell[2] == @cell[6])
      return true
    else
      return false
    end
  end
end
