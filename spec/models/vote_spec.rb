require 'rails_helper'

RSpec.describe Vote, type: :model do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :category_id }
  it { should validate_presence_of :voted_up_item_id }
  it { should validate_presence_of :voted_down_item_id }
  it { should belong_to :user }
  it { should belong_to :category }
end
