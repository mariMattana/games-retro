class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = policy_scope(Game).order(name: :asc)
  end

  def show
    autorizing
  end

  def new
    @game = Game.new
    @consoles = Console.all
    autorizing
  end

  def create
    @game = Game.new(game_params)
    autorizing
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
    autorizing
  end

  def update
    autorizing
    @game.update(game_params)
  end

  def destroy
    autorizing
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :price, :console_id, :photo)
  end

  def set_game
    @game = Game.find(params[:id])
  end

  def autorizing
    authorize @game
  end

end
