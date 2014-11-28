#  Controller.rb
#require_relative "model.rb"


class Controller

 include View

  def initialize(question_pool = nil)
    @question_pool = []
    @deck = {"What is OOP?" => "Object Oriented Programming"}
    @score = 0
  end

  def game_start
   self.greeting
    ask_question
  end

  def ask_question
    #@question = @question_pool.shift
    puts @deck.keys[0]
    get_answer
  end

  def get_answer
    answer = gets.chomp
    if answer == @deck.values[0]
      correct_answer?(answer)
      # puts ["Excellent", "Awesome", "Righteous"].sample
      @score += 1
    else
      puts "Ouch, that hurts."
    end
    ask_question until @question_pool.empty?
  end
end

game = Controller.new
game.game_start

