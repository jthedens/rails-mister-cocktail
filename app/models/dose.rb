class Dose < ApplicationRecord
  validates :description, presence: true, allow_blank: false
  validates :cocktail_id, uniqueness: { scope: :ingredient_id}

  belongs_to :cocktail
  belongs_to :ingredient
end
