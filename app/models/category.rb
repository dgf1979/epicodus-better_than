class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :items
  has_many :votes
end
