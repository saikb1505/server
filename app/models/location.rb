class Location < ApplicationRecord
  belongs_to :client

  has_many :departments, dependent: :destroy
end
