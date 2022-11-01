class Department < ApplicationRecord
  belongs_to :client
  belongs_to :location
end
