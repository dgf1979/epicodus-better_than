require 'rails_helper'

RSpec.describe Auth, type: :model do
  it { should have_one :user } 
end
