class WelcomeController < ApplicationController
  def index
  end

  def scores
    @teams = Team.all.order("created_at DESC")
    @questions_ids = Question.ids
  end
end
