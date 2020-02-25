class Project < ApplicationRecord
  belongs_to :corporation
  has_many :users, through: :project_users
  has_many :project_messages
  has_many :project_users
end
