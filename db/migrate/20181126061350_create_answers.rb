class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :team, foreign_key: true
      t.references :question, foreign_key: true
      t.boolean :complete

      t.timestamps
    end
  end
end
