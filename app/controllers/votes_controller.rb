class VotesController < ApplicationController
  respond_to :json

  def vote_up
    round = Round.find(params[:round_id])
    round.vote_up
    render json: {success: true}
  end

  def vote_down
    round = Round.find(params[:round_id])
    round.vote_down
    render json: {success: true}
  end
end
