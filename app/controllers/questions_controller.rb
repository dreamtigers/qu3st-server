class QuestionsController < ApplicationController
  before_action :authenticate_team!
  before_action :set_question, only: [:show, :update]

  # GET /questions
  # GET /questions.json
  def index
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.check_key(question_params, current_team)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        # format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :show }
        # format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:key)
    end
end
