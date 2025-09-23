class LikesController < ApplicationController

  before_action :require_signin
  before_action :get_review
  before_action :get_game

  def create
    @like = @review.likes.create!(user:current_user)
      redirect_to  @game
  end

  def destroy
    like = @review.likes.find(params[:id])
    like.destroy
    redirect_to @game
  end

  private

  def get_review
    @review = Review.find(params[:review_id])
  end
  def get_game
    @game = Game.find_by(slug:params[:game_id])
  end
end
