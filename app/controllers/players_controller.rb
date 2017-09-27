class PlayersController < ApplicationController
  # GET /players
  def index
    @players = Player.all
  end

  # GET /players/1
  def show
    @player = Player.find(params[:id])
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to @player, notice: 'Player was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /players/1
  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to @player, notice: 'Player was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /players/1
  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_url, notice: 'Player was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def player_params
    params.require(:player).permit(:name)
  end
end
