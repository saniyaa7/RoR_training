def play_hangman(answer, attempts)
  user_guess = "_" * answer.length
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
    puts "\n---Sorry, you lost. The correct word was: #{answer}---"
  end
end

def print_separator
  puts "-" * 50
end

#replace underscore with guess word
def display_game_status(user_guess, attempts)
  puts "\nRemaining attempts: #{attempts}"
  puts "Current status: #{user_guess}\n\n"
end

def update_user_guess(answer, user_guess, guess)
  answer.each_char.with_index do |char, index|
    user_guess[index] = guess if char == guess
  end
end

# Example usage with a single-dimensional string
game_words = [
  "RUBY",
  "PYTHON",
  "JAVA",
  "HTML",
  "CSS",
  "JAVASCRIPT",
  "SQL"
]
#selecting random word
selected_word = game_words.sample
remaining_attempts = selected_word.length + 2
#attempts can be calucalated by length of word +2
play_hangman(selected_word, remaining_attempts)

