require 'open-uri'
require 'csv'

def gen_word
  config = CSV.read('./settings.conf')
  # username = config[0][0]
  difficulty = config[0][1].to_i
  mode = config[0][2]

  if difficulty == 0
      words = open("http://linkedin-reach.hagbpyjegb.us-west-2.elasticbeanstalk.com/words")
  else
      words = open("http://linkedin-reach.hagbpyjegb.us-west-2.elasticbeanstalk.com/words?difficulty=#{difficulty}")
  end

  res_bod = words.read
  words_arr = res_bod.split(' ')
  len = words_arr.length - 1

  if mode == 'word'
      words_arr[rand(0..len)]
  else
      phrase = []
      difficulty = 2 if difficulty == 0 || difficulty == 1
      difficulty.times do
        phrase << words_arr[rand(0..len)]
      end
      phrase.join(' ')
  end
end
