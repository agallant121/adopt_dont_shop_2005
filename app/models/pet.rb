class Pet < ApplicationRecord
  validates_presence_of :name, :image, :age, :sex, :description
  belongs_to :shelter
end
