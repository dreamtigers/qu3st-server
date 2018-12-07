class WelcomeController < ApplicationController

  def index
  end

  def scores
    @teams = Team.all.includes(:answers).order("created_at DESC")
    @questions_ids = Question.ids
  end
end
