# This is the interface that will query the questions.sqlite3 database in the local folder
require 'CSV'

class Model

  def self.get_question(num_of_questions = 1)
    list_of_questions = []
    CSV.foreach('questions_db.csv') do |question|
      list_of_questions << question

    end
    Hash[list_of_questions.sample(num_of_questions)]

    # returns hash of question and answer
    # defaults to returning 1 question, else
    # returns an array of length num_of_questions
  end
end

# build time
# ---
# run time

# p Model.get_question(4) # get 3 questions

