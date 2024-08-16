class ReviewsController < ApplicationController
before_action :get_game
before_action :require_signin

  def new
      @review = @game.reviews.new
  end

  def create
    @review = @game.reviews.new(review_params)
    @review.user = current_user
    if(@review.save)
      redirect_to @game, notice: "Your review for #{@game.title} added successfuly"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @review = @game.reviews.find(params[:id])
  end

  def update
    @review = @game.reviews.find(params[:id])

    if @review.update(review_params)
      redirect_to @game, notice:"Review updated successfuly"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review = @game.reviews.find(params[:id])
    @review.destroy
    redirect_to @game, notice:"Review deleted successfuly"
  end

  private

  def get_game
    @game = Game.find_by(slug:params[:game_id])
  end

  def review_params
    params.require(:review).permit(:review_text, :rate)
  end
end
