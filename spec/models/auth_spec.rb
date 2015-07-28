require 'rails_helper'

RSpec.describe Auth, type: :model do
  it { should have_one :user }
end

describe 'Auth#user' do
  it 'creates an associated user on Auth creation' do
    auth = Auth.create({ email: 'admin@site.com', password: 'password'})
    expect(auth.user).not_to eql(nil)
  end
end
