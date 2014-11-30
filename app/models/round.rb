class Round < ActiveRecord::Base
  has_many :votes

  def score
    votes.sum(:value)
  end

  def vote_up
    v = Vote.create(value: 1)
    votes << v
  end

  def vote_down
    v = Vote.create(value: -1)
    votes << v
  end
end
