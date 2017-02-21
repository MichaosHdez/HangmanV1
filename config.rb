require 'csv'

puts 'Enter desired username'
username = gets.chomp.upcase
username = 'RANDO' if username.empty?

puts 'Select desired word difficulty level: 1-10'
difficulty = gets.chomp.to_i
difficulty = 0 if difficulty < 1 || difficulty > 10

puts 'Select desired mode: word or phrase'
mode = gets.chomp.downcase
mode = 'word' if mode != 'phrase'

CSV.open('game/settings.conf', 'wb') do |csv|
    csv << [username, difficulty, mode]
end
