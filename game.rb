require './visual.rb'
require './word_gen.rb'

answer = gen_word
p answer

def hangman_game(answer)
    secret_word = secret_visual(answer)
    guessed_letters = []
    guesses = 6

    puts 'Welcome to the hangman games'

    until guesses == 0 || answer == secret_word
        puts "Incorrect guesses: #{guessed_letters.join(', ')}" unless guessed_letters.empty?
        puts "You have #{guesses} guesses left, pick a letter"
        puts secret_word
        guess = gets.chomp.downcase
        counter = 0
        initial_secret = ''
        initial_secret.replace(secret_word)
        if guess == answer
            secret_word.replace(answer)
        else
            answer.each_char do |letter|
                secret_word[counter] = letter if letter == guess
                counter += 1
            end
        end

        if guessed_letters.include?(guess) || initial_secret.include?(guess)
            puts "You've already guessed that letter!"
        elsif secret_word == initial_secret
            guesses -= 1
            guessed_letters << guess
            hanging_man(guesses)
        else
            puts 'Correct!'
        end
    end
    if guesses == 0
        puts "The answer was #{answer}, maybe next time!"
        puts 'GAME OVER'
    elsif answer == secret_word
        running_man
        puts "You've won the internet"
    end
end

hangman_game(answer)
