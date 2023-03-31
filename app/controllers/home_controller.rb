class HomeController < ApplicationController
  def index
    @games = Game.all.order(created_at: :asc)
  end
end
