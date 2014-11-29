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

end
