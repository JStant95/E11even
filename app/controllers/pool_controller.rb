class PoolController < ApplicationController
  before_action :set_game
  before_action :set_game_pool, only: [:show, :update, :destroy]
  include Response

    # GET /games/:game_id/pool
    def index
      json_response(@game.pools)
    end

    # POST /games/:game_id/pool
    def create
      @game.pools.create!(pool_params)
      json_response(@pool, :created)
    end

    # GET pool/:id
    def show
      json_response(@pool)
    end

    # PUT pool/:id
    def update
      @pool.update(game_params)
      head :no_content
    end

    # DELETE pool/:id
    def destroy
      @pool.destroy
      head :no_content
    end

    private

    def pool_params
      params.permit(:user_id, :game_id, :invite_status)
    end

    def set_game
      @game = Game.find(params[:id])
    end

    def set_game_pool
      @gamer = @game.pools.find_by!(id: params[:id]) if @game
    end
end
