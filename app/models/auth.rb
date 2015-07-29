class Auth < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user

  after_create :create_and_link_user

  protected
    def create_and_link_user
      user = User.create({ auth_id: self.id })
      self.update({ user_id: user.id })
    end
end
