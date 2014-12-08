class RoundsController < ApplicationController
  respond_to :json

  def index
    if params[:random]
      render json: Round.limit(100).order("RANDOM()")
    elsif params[:top_rated]
      render json: Round.top_rated
    end
  end

  def create
    render json: Round.create(rounds_strong_params)
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
      params.require(:round).permit(:scenerio_1, :scenerio_2, :author)
    end
end
