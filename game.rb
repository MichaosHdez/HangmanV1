require 'open-uri'
# API call to LI words list
words = open("http://linkedin-reach.hagbpyjegb.us-west-2.elasticbeanstalk.com/words")
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
answer.length.times do |i|
  secret_word << "-"
end
# set the letters guessed list container
guessed_letters = []
# set remaining number of guesses
guesses = 6
# create a method to check if guessed letter is in the answer
def guess_checker(answer_arr,guess)

end
p secret_word
