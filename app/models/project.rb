class Project < ApplicationRecord
  belongs_to :corporation
  has_many :users, through: :project_users
  has_many :project_messages, dependent: :delete_all
  has_many :project_users, dependent: :delete_all
  validates :name, presence: true
end
