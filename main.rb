require "./question"
require "./game"
require "./players"

player1 = Player.new("Chris")
player2 = Player.new("Greg")
game = Game.new(player1, player2)
game.game_start
