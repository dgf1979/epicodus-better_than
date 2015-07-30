class User < ActiveRecord::Base
  has_one :auth
  acts_as_voter

  def has_voted_today_for(category)
    self.votes.each do |vote|
      vote_date = vote.created_at
      vote_category = Item.find(vote.votable_id).category
      if vote_date.today? && (vote_category.id == category.id)
        return true
      end
    end
    return false
  end

end
