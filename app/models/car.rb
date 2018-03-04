class Car < ApplicationRecord
  belongs_to :brand
  has_many :auto_destroys
end
