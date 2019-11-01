class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :broker
  belongs_to :vehicle
end
