class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :items

  def item_ranks
    return self.items.select(:rank).distinct
  end

  def item_rank_chartdata
    normalize_to = self.items.minimum(:rank) - 1
    data = []
    self.items.select(:name, :rank).each do |item|
      data.push([item.name, item.rank - normalize_to])
    end
    return data
  end
end
