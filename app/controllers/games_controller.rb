class GamesController < ApplicationController
before_action :get_game, except:[:new, :create, :index]
  def index
    @games = Game.all
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end


  private

  def game_params

  end

  def get_game
    # the ! is call an exception in case of any error
    @game = Game.find_by!(slug:params[:id])
  end
end
