class PortsController < ApplicationController
  before_action :set_port, only: [:show, :edit, :update, :destroy]
  before_action :set_game, only: [:new, :create, :edit, :update]

  def index
    @ports = Port.all
  end

  def show
  end

  def new
    @port = Port.new
  end

  def edit
  end

  def create
    @port = Port.new(port_params)

    if @port.save
      redirect_to games_path, notice: 'Port was added.'
    else
      render :new
    end
  end

  def update
    if @port.update(port_params)
      redirect_to games_path, notice: 'Port was updated.'
    else
      render :edit
    end
  end

  def destroy
    @port.destroy
    redirect_to ports_url, notice: 'Port was removed.'
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_port
    @port = Port.find(params[:id])
  end

  def set_game
    @game = Game.find(params[:game_id])
  end

  def port_params
    params.require(:port).permit(:game_id, :port_start, :port_end, :protocol, :system)
  end
end
