class User < ActiveRecord::Base
  has_one :auth
  has_many :votes
end
