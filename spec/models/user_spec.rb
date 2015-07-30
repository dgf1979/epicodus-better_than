require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_one :auth }
end

describe 'User#has_voted_today_for' do
  it 'should return true if the user has voted for an item in the category' do
    category = Category.create({ name: 'sample category' })
    item = category.items.create({ name: 'an option' })
    user = User.create()
    item.vote_by :voter => user
    expect(user.has_voted_today_for(category)).to(equal(true))
  end

  it 'should return false if the user has cast no votes in the category' do
    category = Category.create({ name: 'sample category' })
    user = User.create()
    expect(user.has_voted_today_for(category)).to(equal(false))
  end
end
