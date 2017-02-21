load './game/game.rb'

play = true

until play == false
  hangman_game
  puts "Would you like to play again? Y/N"
  res = gets.chomp.upcase
  play = false unless res == "Y"
end
