class Item < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :category
  acts_as_votable
  default_scope { order('rank DESC') }
end
