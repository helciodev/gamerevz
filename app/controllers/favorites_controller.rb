class FavoritesController < ApplicationController
before_action :require_signin
before_action :get_game

def create
  @favorite = @game.favorites.create!(user:current_user)
  redirect_to @game
end

def destroy
@favorite = @game.favorites.find(params[:id])
@favorite.destroy

redirect_to @game
end

private

def get_game
  @game = Game.find_by(slug: params[:game_id])
end

end
