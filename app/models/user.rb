class User < ApplicationRecord
  before_create :create_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :users_role
  has_many :roles, :through => :users_role

  private
  def create_role
    self.roles << Role.find_by_name(:user)
  end
end
