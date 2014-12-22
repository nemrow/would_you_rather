class RoundsController < ApplicationController
  respond_to :json

  def index
    if params[:random]
      render json: Round.limit(100).order("RANDOM()")
    elsif params[:top_rated]
      render json: Round.top_rated(30)
    end
  end

  def create
    round = Round.create(rounds_strong_params)
    round.vote_up
    render json: round
  end

  def show
    render json: Round.find(params[:id])
  end

  def destroy
    render json: Round.find(params[:id]).destroy
  end

  def update
    render json: Round.find(params[:id]).update(params[:round])
  end

  private
    def rounds_strong_params
      params.require(:round).permit(:scenerio_1, :scenerio_2, :author, :email)
    end
end
