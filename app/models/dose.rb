class Dose < ApplicationRecord
  # belongs_to :cocktail
  # belongs_to :ingredient
  # validates :description, presence: true, uniqueness: true
  # validates :cocktail_id, uniqueness: { scope: :ingredient_id }

  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
  # validates :cocktail, presence: true
  # validates :ingredient, presence: true
end
