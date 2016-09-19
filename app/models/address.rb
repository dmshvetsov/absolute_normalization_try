class Address < ApplicationRecord
  belongs_to :state
  belongs_to :city
  belongs_to :street
  belongs_to :house
end
