class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  has_many :corporations, through: :corporation_user_roles
  # has_many :roles, through: :corporation_user_roles
  has_many :corporation_user_roles
end
