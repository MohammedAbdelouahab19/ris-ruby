class Pathology < ApplicationRecord
  belongs_to :pathology_zone
  belongs_to :pathology_category
end
