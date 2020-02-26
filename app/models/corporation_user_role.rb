class CorporationUserRole < ApplicationRecord
  belongs_to :user
  belongs_to :corporation
  belongs_to :role
end
