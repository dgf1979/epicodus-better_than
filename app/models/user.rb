class User < ActiveRecord::Base
  has_one :auth
end
