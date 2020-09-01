class GamersController < ApplicationController
  before_action :set_gamer, only: [:show, :update, :destroy]
  include Response

    # GET /games/:game_id/gamers
    def index
      json_response(@game.gamers)
    end

    # POST /games/:game_id/gamers
    def create
      @game.gamers.create!(gamer_params)
      json_response(@gamer, :created)
    end

    # GET /games/:game_id/gamers/:id
    def show
      json_response(@gamer)
    end

    # PUT /games/:game_id/gamers/:id
    def update
      @gamer.update(game_params)
      head :no_content
    end

    # DELETE /games/:game_id/gamers/:id
    def destroy
      @gamer.destroy
      head :no_content
    end

    private

    def gamer_params
      params.permit(:user_id, :game_id, :invite_status)
    end

    def set_gamer
      @gamer = Gamer.find(params[:id])
    end
end
