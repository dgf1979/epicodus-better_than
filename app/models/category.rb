class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :items
  has_many :votes
  
  def item_ranks
    return self.items.select(:rank).distinct
  end
end
