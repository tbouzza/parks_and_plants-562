class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag

  validates :plant_id, uniqueness: { scope: :tag_id, message: "this tag is already taken" }
end
