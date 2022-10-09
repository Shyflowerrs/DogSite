class Breed < ApplicationRecord
  has_many :dogs, dependent: :destroy
  validates :breed_group, :bred_for, presence: true
  #validates :breed_group, uniqueness: true
end
