class QuestionsController < ApplicationController
  before_action :authenticate_team!
  before_action :set_question, only: [:show]

  # GET /questions
  # GET /questions.json
  def index
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end
end
