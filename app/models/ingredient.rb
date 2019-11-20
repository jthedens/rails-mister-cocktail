class Ingredient < ApplicationRecord
  validates :name, presence: true, allow_blank: false, uniqueness: true
  has_many :doses
  has_many :cocktails, through: :doses
end
