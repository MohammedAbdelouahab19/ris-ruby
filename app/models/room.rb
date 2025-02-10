class Room < ApplicationRecord
  validates :name, presence: true

  belongs_to :service
  belongs_to :modality

  has_and_belongs_to_many :regions
end
