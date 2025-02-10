class Room < ApplicationRecord
  validates :name, presence: true

  belongs_to :service
  belongs_to :modality
end
