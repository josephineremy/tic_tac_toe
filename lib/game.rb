class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
attr_accessor :current_player, :board

  def initialize(player1, player2)
    # message de bienvenue
    system "clear"
    puts "\n\n\n\n"
    puts "                              -----------------------------------------"
    puts "                             |    Bienvenue sur le jeu du MORPION !    |"
    puts "                             |  (...mais celui-là est codé par Jojo !) |"
    puts "                              -----------------------------------------"
    puts "\n\n\n\n"
    puts "Alors, normalement, vous êtes deux joueurs; l’un joue avec le signe X et l’autre avec le signe O. Vous remplissez alternativement les cellules vides."
    puts "Au début du jeu, il y a 9 cellules numérotées dans un tableau."
    puts "Le but est de placer 3 signes identiques sur une colonne, une ligne ou une diagonale."
    puts "Le jeu prend également fin si le panneau est entièrement rempli et si aucun joueur n’arrive à atteindre le but. Bonne chance!"
    puts "\n\n"

    # création du premier joueur
    puts 'Bonjour joueur 1, tu seras X, quel est ton petit nom?'
    puts "\n"
    print '>'
    name1=gets.chomp.to_s
    @player1=Player.new(name1, "X")
    puts "\n"

    # création du second joueur
    puts 'Bonjour joueur 2, tu seras O, quel est ton petit nom?'
    puts "\n"
    print '>'
    name2 = gets.chomp.to_s
    @player2 = Player.new(name2, "O")
    @board = Board.new # création du jeu
  end

  def turn
    @board.drawing_board # affichage du jeu
    @current_player=@player1 # sélection du premier joueur
    while @board.victory? == false # boucle pour que la partie continue tant qu'il n'y a pas de gagnant
      puts "\n\n"
      puts "#{@current_player.name}, quel coup de maître veux-tu jouer? Choisis une case entre 1 et 9."
      puts "\n\n"
      print '>'
      choice=gets.chomp.to_s # joueur choisit une case
      @board.boardcase_array.each do |boardcase|
          if boardcase.content == choice #comparaison entre les deux "strings"
				  boardcase.content = @current_player.sign # remplacement du chiffre de la case en signe du joueur
          end
			end
			@board.drawing_board # affichage du jeu dans la boucle

        # changement de joueur
        if @current_player == @player1
          @current_player = @player2
        else
        @current_player = @player1
      end

      # compteur de tours
      @board.count_turn	+= 1
			break if @board.count_turn == 9
    end
  end


  def game_end
    if @board.victory? == true # condition d'un gagnant
      # changement de joueur pour que le "current_player" soit bien le joueur gagnant
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
      puts "\n\n"
			puts "Le gagnant est le joueur #{current_player.name}. Bravo !" # affichage du gagnant
      puts "\n\n"
			else
        puts "\n\n"
        puts "Match nul !!! Dommage..." # affichage où pas de gagnant
        puts "\n\n"
    end
  end
end
