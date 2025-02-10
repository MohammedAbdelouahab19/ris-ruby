class Modality < ApplicationRecord
  validates :code, presence: true

  has_and_belongs_to_many :modality_options
end
