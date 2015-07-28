class User < ActiveRecord::Base
  has_one :auth
  #has_many :votes
  acts_as_voter
end
