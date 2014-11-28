class View

  def greeting
    puts "Welcome to Ruby"
    name=gets.chomp
    return name
  end

  def evaluated_answer(true_false)
    true_false? correct_answer : incorrect_answer
  end

  def ask_question(question)
    puts question
    answer=gets.chomp
    return answer
  end

  def correct_answer
    puts "Great"
  end

  def incorrect_answer
    puts "Incorrect dude"
  end

end
