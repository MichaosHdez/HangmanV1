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
answer.length.times do |_i|
    secret_word << '-'
end
# set the letters guessed list container
guessed_letters = []
# set remaining number of guesses
guesses = 6
# create a method to check if guessed letter is in the answer
def guess_checker(answer_arr, guess, secret_arr)
    counter = 0
    initial_secret_array = secret_arr
    for let in answer_arr
        secret_arr[counter] = let if let == guess
        counter += 1
    end
    if secret_arr == initial_secret_array
        puts 'Wrong!'
    else
        puts 'Correct!'
    end
end
puts 'Welcome to the hangman games'

until guesses == 0 || answer == secret_word
  puts "You've used the following letters #{guessed_letters.join(', ')}" unless guessed_letters.empty?
  puts "You have #{guesses} guesses left, pick a letter"
  guess = gets.chomp.downcase

  break
end
