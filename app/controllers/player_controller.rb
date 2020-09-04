class PlayerController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]
  include Response
    # GET /players
    def index
      @players = Player.all
      json_response(@games)
    end

    # POST /players
    def create
      @player = Player.create!(player_params)
      json_response(@player, :created)
    end

    # GET /players/:id
    def show
      json_response(@player)
    end

    # PUT /games/:id
    def update
      @player.update(player_params)
      head :no_content
    end

    # DELETE /games/:id
    def destroy
      @player.destroy
      head :no_content
    end

    private

    def player_params
      params.permit(:position, :playername)
    end

    def set_player
      @player = Player.find(params[:id])
    end
end
