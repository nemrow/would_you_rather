class Vote < ActiveRecord::Base
  validates_uniqueness_of :round_id, scope: :ip_address

  belongs_to :round
end
