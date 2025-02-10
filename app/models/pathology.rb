class Pathology < ApplicationRecord
  validates :name, presence: true

  belongs_to :pathology_zone
  belongs_to :pathology_category
end
