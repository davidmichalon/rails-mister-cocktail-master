class Dose < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :cocktail
  # validates :ingredient_id, uniqueness {scope: :cocktail_id}
  validates_uniqueness_of :ingredient_id, :scope => [:cocktail_id]
  validates :description, :cocktail, :ingredient, presence: :true
end
