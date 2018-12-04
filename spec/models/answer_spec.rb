require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe "Associations" do
    it "belongs to team" do
      assc = described_class.reflect_on_association(:team)
      expect(assc.macro).to eq :belongs_to
    end

    it "belongs to question" do
      assc = described_class.reflect_on_association(:question)
      expect(assc.macro).to eq :belongs_to
    end
  end

  describe "Validations" do
    fixtures :teams, :questions

    it "is not valid without team_id" do
      answer = Answer.create(question_id: questions(:test).id)
      expect(answer).to_not be_valid
    end

    it "is not valid without question_id" do
      answer = Answer.create(team_id: teams(:test).id)
      expect(answer).to_not be_valid
    end

    it "is not valid if duplicated" do
      valid_answer = Answer.create(team_id: teams(:test).id, question_id: questions(:test).id)
      invalid_answer = Answer.create(team_id: teams(:test).id, question_id: questions(:test).id)
      expect(invalid_answer).to_not be_valid
    end

    it "is valid with valid attributes" do
      answer = Answer.create(team_id: teams(:test).id, question_id: questions(:test).id)
      expect(answer).to be_valid
    end
  end
end
