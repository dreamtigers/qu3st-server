class WelcomeController < ApplicationController
  def index
  end

  def scores
    @teams = Team.all.order("created_at DESC")
  end
end
