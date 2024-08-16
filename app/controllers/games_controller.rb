class GamesController < ApplicationController
  before_action :require_signin,  except:[:index, :show]
  before_action :require_admin,except:[:index, :show]
  before_action :get_game, except:[:new, :create, :index]

  def index
    @games = Game.all
  end

  def show

  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game, notice:"#{@game.title} created successfuly ☑️"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update

    if @game.update(game_params)
      redirect_to @game, notice:"#{@game.title} updated sucessfuly ☑️"
    else

      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @game.destroy
    flash[:alert] = 'Game deleted 😢'
    redirect_to root_url, status: :see_other
  end


  private

  def game_params
    params.require(:game).permit(:title, :directors, :writers, :description, :cover_image, :release_date, :production_company, genre_ids:[])
  end

  def get_game
    # the ! is call an exception in case of any error
    @game = Game.find_by!(slug:params[:id])
  end
end
