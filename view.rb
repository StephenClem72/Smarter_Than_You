class View

  def self.greeting
    puts "~~~~ Welcome to Ruby TRIVIA ~~~~"
    puts
    puts "********************************"
    puts
  end

  def self.evaluated_answer(true_false)

    true_false ? self.correct_answer : self.incorrect_answer
  end

  def self.ask_question(question)
    animate_text "QUESTION:"
    5.times {print "."; sleep (0.1)}
    puts
    puts question.capitalize
    answer = gets.chomp.downcase
    return answer
  end

  def self.correct_answer
    puts
    animate_text ["Great", "Awesome", "Yep.", "fersher", "fosho", "aight", "i guess?", "ok", "nice hat"].sample
    sleep 1
    puts
  end

  def self.incorrect_answer
    puts
    animate_text ["Incorrect dude", "nope", "You are wrong.", "that hat is kind of cheesy", "naw"].sample
    sleep 1
    puts
  end

  def self.animate_text(string)
    message = string.split("")
    print = []
    while print.length < string.length
      print << message.shift
      self.clear_screen
      p print.join
      sleep(0.02)
    end
  end

  def self.clear_screen
    print "\e[H\e[2J"
  end

  def self.end_game(score)
    animate_text "...CALCULATING SCORE..."
    80.times {print "."; sleep(0.02)}
    puts
    p "Hey! NICE GAME, You scored #{score}"
  end

end
