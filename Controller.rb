require_relative "model.rb"
require_relative "view.rb"

class Controller

  def initialize
    @deck = Model.get_question(1)
    @score = 0
  end

  def game_loop
    View.greeting
    ask_question
  end

  private

  def ask_question
    # @question = @question_pool.shift
    # puts @deck.keys[0]

    @current_question = @deck.shift

    answer = View.ask_question(@current_question.first)

    answer_correct = check_answer?(answer)

    @score += 1 if answer_correct

    View.evaluated_answer(answer_correct)
  end

  def check_answer?(answer)
    answer == @current_question[1]
  end
end

game = Controller.new
game.game_loop

