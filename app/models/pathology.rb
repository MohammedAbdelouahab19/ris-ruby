class Pathology < ApplicationRecord
  validates :name, presence: true

  belongs_to :pathology_zone
  belongs_to :pathology_category

  has_and_belongs_to_many :reports
end
