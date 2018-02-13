class Auto < ApplicationRecord
  validates :marka, presence: true
  validates :model, presence: true
  validates :autoYear, presence: true
end
