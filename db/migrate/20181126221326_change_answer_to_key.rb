class ChangeAnswerToKey < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :answer, :key
  end
end
