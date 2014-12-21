class VotesController < ApplicationController
  respond_to :json

  def vote_up
    round = Round.find(params[:round_id])
    vote = round.vote_up(request.remote_ip)
    render json: {success: vote}
  end
end
