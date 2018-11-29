class Answer < ApplicationRecord
  validates_uniqueness_of :question_id, scope: :team_id, message: "There's an
  existing answer for this question, cannot create a new one."

  belongs_to :team
  belongs_to :question
end
