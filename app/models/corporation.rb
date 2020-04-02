class Corporation < ApplicationRecord
  has_many :users, through: :corporation_user_roles
  # has_many :roles, through: :corporation_user_roles
  has_many :corporation_user_roles, dependent: :delete_all
  has_many :projects, dependent: :destroy
  validates :name, presence: true
end
