class Vote < ActiveRecord::Base
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :voted_up_item_id, presence: true
  validates :voted_down_item_id, presence: true
  belongs_to :user
  belongs_to :category
end
