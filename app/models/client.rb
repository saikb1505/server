class Client < ApplicationRecord
  has_many :locations, dependent: :destroy
  has_many :departments, dependent: :destroy
end
