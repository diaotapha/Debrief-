class GamesController < ApplicationController
  def show
    @game = Game.find_by_slug params[:id]
    @postits =  @game.postits.order(created_at: :desc)
    @postit = Postit.new
  end
end
