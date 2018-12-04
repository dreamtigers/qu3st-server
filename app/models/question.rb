class Question < ApplicationRecord
  has_many :answers
  has_many :teams, through: :answers

  def check_key params, team
    if params[:key] == self.key
      complete = true
    elsif params[:key] == 'run'
      complete = false
    else
      return false
    end
    # answer = Answer.find_or_initialize_by(team_id: team_id, question_id: self.id)
    # answer.update(complete: complete)
    team.answers.find_or_create_by(question_id: self.id).update(complete: complete)
  end
end
