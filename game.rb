require './players'
require './question'

class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @turn = 1
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def game_start()

    while 1 == 1
      current_player()
      question = Question.new
      answer = question.ask_question

      if answer == false
        subtract_life(@current_player) 
      end

      if @current_player.lives == 0
        if @player1.lives > 0
          puts "Player 1 wins with a score of #{@player1.lives}/3"
          break
        else 
          puts "Player 2 wins with a score of #{@player2.lives}/3"
          break
        end
      end
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      change_turn()

    end
  end
  
  def change_turn
    @turn += 1
  end
  
  def subtract_life(player)
    player.lives -= 1
  end

  def current_player
    if @turn % 2 == 0
      puts "Player 2's turn"
      @current_player = @player2
    else 
      puts "Player 1's turn"
      @current_player = @player1
    end
  end


end