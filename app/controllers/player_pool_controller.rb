class PlayerPoolController < ApplicationController
  before_action :set_game
  before_action :set_game_player_pool, only: [:show, :update, :destroy]
  include Response

    # GET /games/:game_id/player_pools
    def index
      json_response(@game.playerpools)
    end

    # POST /games/:game_id/player_pools
    def create
      @game.player_pools.create!(player_pools_params)
      json_response(@player_pool, :created)
    end

    # GET player_pools/:id
    def show
      json_response(@player_pool)
    end

    # PUT player_pools/:id
    def update
      @player_pool.update(player_pools_params)
      head :no_content
    end

    # DELETE player_pools/:id
    def destroy
      @player_pool.destroy
      head :no_content
    end

    private

    def player_pool_params
      params.permit(:player_id, :pool_id)
    end

    def set_game
      @game = Game.find(params[:id])
    end

    def set_game_player_pool
      @gamer = @game.player_pools.find_by!(id: params[:id]) if @game
    end
end
