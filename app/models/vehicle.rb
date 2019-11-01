class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :sales, dependent: :nullify
end
