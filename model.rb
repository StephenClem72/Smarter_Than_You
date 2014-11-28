# This is the interface that will query the questions_db.csv "database" and return questions.
require 'CSV'

class Model

  # returns hash of question and answer
  # defaults to returning 1 question, else
  # returns an array of length num_of_questions
  def self.get_question(num_of_questions = 1)
    list_of_questions = []

    CSV.foreach('questions_db.csv') do |question|
      list_of_questions << question
    end

    # p list_of_questions

    Hash[list_of_questions.sample(num_of_questions)]
  end
end

# build time
# ---
# run time

# p Model.get_question(4)

