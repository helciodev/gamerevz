class ReviewsController < ApplicationController
before_action :get_review
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

  end

  def update

  end

  def destroy

  end

  private

  def get_review
    @game = Game.find_by(slug:params[:game_id])
  end

  def review_params
    params.require(:review).permit(:review_text, :rate)
  end
end
