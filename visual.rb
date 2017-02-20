
def running_man
    head = '  \O/  '
    arms = '   |   '
    legs = '  / \  '

    30.times do
        puts head
        puts arms
        puts legs
        head.prepend('---')
        arms.prepend('---')
        legs.prepend('---')
        sleep 0.05
    end
end

def hanging_man(guess_count)
    if guess_count == 5
        puts 'Wrong!'
        puts '  0  '
    elsif guess_count == 4
        puts 'Wrong!'
        puts '  0  '
        puts '  |  '
    elsif guess_count == 3
        puts 'Wrong!'
        puts '  0  '
        puts ' /|  '
    elsif guess_count == 2
        puts 'Wrong!'
        puts '  0  '
        puts ' /|\ '
    elsif guess_count == 1
        puts 'Wrong!'
        puts '  0  '
        puts ' /|\ '
        puts ' /   '
    else
        puts ' Dead '
        puts '  0  '
        puts ' /|\ '
        puts ' / \ '
    end
end

def secret_visual(answer)
  secret_word = ''
  answer.each_char do |let|
    if let == ' '
      secret_word << let
    else
      secret_word << '_'
    end
  end
  secret_word
end
