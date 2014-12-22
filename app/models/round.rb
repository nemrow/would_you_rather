class Round < ActiveRecord::Base
  has_many :votes

  def score
    votes.sum(:value)
  end

  def vote_up(ip_address=nil)
    v = Vote.create(value: 1, ip_address: ip_address)
    votes << v
  end

  def self.top_rated_ids(limit)
    ActiveRecord::Base.connection.select_values("
      select r.id
      from rounds r
      join votes v on v.round_id = r.id
      group by r.id
      order by sum(v.value) desc
      limit #{limit}
    ")
  end

  def self.top_rated(limit=100)
    Round.find(top_rated_ids(limit)).sort_by{|i| i.score}.reverse
  end
end
