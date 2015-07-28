class Vote < ActiveRecord::Base
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :voted_up_item_id, presence: true
  validates :voted_down_item_id, presence: true
  belongs_to :user
  belongs_to :category

  def self.has_voted_today(user, category)
    result = self.where(user_id: user.id, category_id: category.id)
    result.each do |vote|
      if vote.created_at.today?
        return true
      end
    end

    return false
  end
end
