class Corporation < ApplicationRecord
  has_many :users, through: :corporation_users
  has_many :projects
end
