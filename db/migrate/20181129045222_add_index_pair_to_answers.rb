class AddIndexPairToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_index :answers, [:team_id, :question_id], unique: true
  end
end
