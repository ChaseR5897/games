class GamesController < ApplicationController
  def new
    @game = Gmae.new
  end
  
  def create
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    if @game.save
      flash[:notice] = "You have creatad game successfully."
      redirect_to game_path(@game.id)
    else
      @games = Game.all
      render :index
    end
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def destroy
  end
  
  def update
  end
end
