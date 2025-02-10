class ModalityOption < ApplicationRecord
  validates :name, presence: true

  has_and_belongs_to_many :examinations
  has_and_belongs_to_many :modalities
end
