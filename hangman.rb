def play_hangman(answer, attempts)
  user_guess = Array.new(answer.length, "__")
#if attempts are remain and right word is not found
  while attempts.positive? && answer != user_guess
    print_separator
    display_game_status(user_guess, attempts)

    print "\nEnter a letter: "
    guess = gets.chomp.upcase
#if words matches
    if answer.include?(guess)
      update_user_guess(answer, user_guess, guess)
      puts "Good guess!"
#1 attemps is gone
    else
      attempts -= 1
      puts "Incorrect guess! Remaining attempts: #{attempts}"
    end
  end

  print_separator
  display_game_status(user_guess, attempts)
#displaying output
  if answer == user_guess
    puts "\n---Congratulations! You won!---"
  else
    puts "\n---Sorry, you lost. The correct word was: #{answer.join}---"
  end
end

def print_separator
  puts "-" * 50
end
#replace underscore with guess word
def display_game_status(user_guess, attempts)
  puts "\nRemaining attempts: #{attempts}"
  print "Current status: "
  user_guess.each { |char| print "#{char} " }
  puts "\n\n"
end

def update_user_guess(answer, user_guess, guess)
  answer.each_with_index do |char, index|
    user_guess[index] = guess if char == guess
  end
end

# Example usage with a single-dimensional array
game_words = [
  ["R", "U", "B", "Y"],
  ["P", "Y", "T", "H", "O", "N"],
  ["J", "A", "V", "A"],
  ["H", "T", "M", "L"],
  ["C", "S", "S"],
  ["J", "A", "V", "A", "S", "C", "R", "I", "P", "T"],
  ["S", "Q", "L"]
]
#selecting random word
selected_word = game_words.sample
#attempts can be calucalated by length of word +2
remaining_attempts = selected_word.length + 2

play_hangman(selected_word, remaining_attempts)
