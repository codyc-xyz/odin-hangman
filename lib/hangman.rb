class Player
@@answer = []

end

class Computer < Player
  def start_game
    possible_words = []
    puts 'Hangman initialized'
    lines = File.readlines('../google-10000-english-no-swears.csv')
    lines.each do |line|
      possible_words.push(line) if line.length >= 5 && line.length <= 12
    end
    string_answer = possible_words.sample
    string_answer.length.times do
      puts '_'
    end
    @@answer = string_answer.split(//) 
  end
end

class Human < Player

end

computer_player = Computer.new
computer_player.start_game