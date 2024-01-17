def play_hangman(answer, attempts)
    user_guess = Array.new(answer.length, "__")
  
    while attempts.positive? && answer != user_guess.join
      print_separator
      display_game_status(user_guess, attempts)
  
      print "\nEnter a letter: "
      guess = gets.chomp.upcase
  
      if answer.include?(guess)
        update_user_guess(answer, user_guess, guess)
        puts "Good guess!"
      else
        attempts -= 1
        puts "Incorrect guess! Remaining attempts: #{attempts}"
      end
    end
  
    print_separator
    display_game_status(user_guess, attempts)
  
    if answer == user_guess.join
      puts "\n---Congratulations! You won!---"
    else
      puts "\n---Sorry, you lost. The correct word was: #{answer}---"
    end
  end
  
  def print_separator
    puts "-" * 50
  end
  
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
  
  # Example usage:
  game_words = ["RUBY", "PYTHON", "JAVA", "HTML", "CSS", "JAVASCRIPT", "SQL"]
  selected_word = game_words.sample
  remaining_attempts = selected_word.length + 2
  
  play_hangman(selected_word, remaining_attempts)
  