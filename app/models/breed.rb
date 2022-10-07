class Breed < ApplicationRecord
  has_many :dogs, dependent: :destory
  validates :breed_group, :bred_for, presence: true
end
