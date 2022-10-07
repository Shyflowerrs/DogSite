class Dog < ApplicationRecord
  belongs_to :breed
  validates :name, :life_span, presence: true
end
