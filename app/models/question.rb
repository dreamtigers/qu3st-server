class Question < ApplicationRecord
  has_many :answers
  has_many :teams, through: :answers

  def check_key key, team
    if key == self.key
      complete = true
    elsif key == 'run'
      complete = false
    else
      return false
    end
    team.answers.find_by(question_id: self.id).update(complete: complete)
  end

end
