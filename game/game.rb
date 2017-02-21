require_relative 'visual'
require_relative 'word_gen'

def hangman_game
    answer = gen_word
    secret_word = secret_visual(answer)
    guessed_letters = []
    guesses = 6
    # puts answer
    puts 'Welcome to the hangman games'

    until guesses == 0 || answer == secret_word
        puts "Incorrect guesses: #{guessed_letters.join(', ')}" unless guessed_letters.empty?
        puts "You have #{guesses} guesses left, pick a letter"
        hanging_man(guesses)
        puts secret_word

        guess = gets.chomp.downcase.strip
        counter = 0
        initial_secret = ''
        initial_secret.replace(secret_word)

        if guess == answer
            secret_word.replace(answer)
        elsif valid_input(guess) == false
            puts "You must have a death wish!"
        else
            answer.each_char do |letter|
                secret_word[counter] = letter if letter == guess
                counter += 1
            end
        end

        if guessed_letters.include?(guess) || initial_secret.include?(guess)
            puts "You've already guessed that letter!"
        elsif valid_input(guess) == false
            puts "Letters or words only"
        elsif secret_word == initial_secret
            guesses -= 1
            guessed_letters << guess
        else
            puts 'Correct!'
        end
    end

    if guesses == 0
        puts "The answer was #{answer}, maybe next time!"
        hanging_man(guesses)
        puts 'GAME OVER'
    elsif answer == secret_word
        running_man
        puts "You've won the internet"
    end
end

def valid_input(str)
		guess = str.delete(' ')
    guess[/[a-zA-Z]+/]  == guess
end
