class View

  def self.greeting
    puts "Welcome to Ruby"
    name = gets.chomp
    return name
  end

  def self.evaluated_answer(true_false)
    true_false ? self.correct_answer : self.incorrect_answer
  end

  def self.ask_question(question)
    puts question
    answer = gets.chomp
    return answer
  end

  def self.correct_answer
    puts "Great"
  end

  def self.incorrect_answer
    puts "Incorrect dude"
  end

  def self.correct_animation(string)
    message=string.split("")
    print=[]
    while print.length < string.length
      print << message.shift
      self.clear_screen
      p print.join
      sleep 1
    end
  end

  def self.clear_screen
    print "\e[H\e[2J"
  end

  def self.end_game(score)
    p "Hey! NICE GAME, You scored #{score}"
  end

end
