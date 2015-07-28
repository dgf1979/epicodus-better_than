class Item < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :category

  # def votes
  #   votes_for = Vote.where(category: self.category, voted_up_item_id: self.id).count
  #   votes_against = Vote.where(category: self.category, voted_down_item_id: self.id).count
  #   return votes_for - votes_against
  # end

end
