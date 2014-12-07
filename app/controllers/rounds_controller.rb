class RoundsController < ApplicationController
  respond_to :json

  def index
    render json: Round.first(20)
  end

  def create
    render json: Round.create(params[:round])
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

    end
end
