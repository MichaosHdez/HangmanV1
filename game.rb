require 'open-uri'
# API call to LI words list
words = open('http://linkedin-reach.hagbpyjegb.us-west-2.elasticbeanstalk.com/words')
res_bod = words.read
# Format words into array
list_of_words = res_bod.split(' ')
# Set secret word
rando_word = list_of_words[rand(0..list_of_words.length)]
# Answer into array for easy checks
answer = rando_word.split('')
# Answer status the user can see
secret_word = []
# Set the right amount of "-"s for the user to see
answer.length.times do
    secret_word << '-'
end
# set the letters guessed list container
guessed_letters = []
# set remaining number of guesses
guesses = 6
# create a method to check if guessed letter is in the answer
# def guess_checker(answer_arr, guess, secret_arr)
#
# end
puts 'Welcome to the hangman games'

until guesses == 0 || answer == secret_word
    puts "You've used the following letters #{guessed_letters.join(', ')}" unless guessed_letters.empty?
    puts "You have #{guesses} guesses left, pick a letter"
    puts secret_word.join(',')
    guess = gets.chomp.downcase
    counter = 0
    initial_secret = []
    initial_secret.replace(secret_word)
    for let in answer
        secret_word[counter] = let if let == guess
        counter += 1
    end

    if secret_word == initial_secret
        guesses -= 1
        guessed_letters << guess
        puts 'Wrong!'
    else
        guessed_letters << guess
        puts 'Correct!'
    end
  end
if guesses == 0
    'You lose, GG'
elsif answer == secret_word
    puts running_man
    puts "You've won the internet"
end

def running_man
    place = 0

    head = '   O   '
    arms = '  \|/  '
    legs = '   /\  '

    10.times do
        puts head
        puts arms
        puts legs
        head.prepend('---')
        arms.prepend('---')
        legs.prepend('---')
    end
end
