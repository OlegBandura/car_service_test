class Service < ApplicationRecord
  validates :name_service, presence: true
  validates :address, presence: true
end
