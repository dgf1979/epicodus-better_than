require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should validate_presence_of :name }
  it { should have_many :items }
  it { should have_many :votes }
end
