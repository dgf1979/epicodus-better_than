require 'rails_helper'

RSpec.describe Vote, type: :model do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :category_id }
  it { should validate_presence_of :voted_up_item_id }
  it { should validate_presence_of :voted_down_item_id }
  it { should belong_to :user }
  it { should belong_to :category }
end

describe 'Vote.has_voted_today(user, category)' do
  it 'returns true if the user has already voted for this category' do
    auth = Auth.create({ email: 'admin@site.com', password: 'password'})
    category = Category.create({ name: 'test'})
    vote = Vote.create(
      { user_id: auth.user.id, category_id: category.id, voted_up_item_id: 1, voted_down_item_id: 2 })
    expect(Vote.has_voted_today(auth.user, category)).to eql(true)
  end

  it 'returns false if the user has not voted for this category' do
    auth = Auth.create({ email: 'admin@site.com', password: 'password'})
    category = Category.create({ name: 'test'})
    expect(Vote.has_voted_today(auth.user, category)).to eql(false)
  end
end
