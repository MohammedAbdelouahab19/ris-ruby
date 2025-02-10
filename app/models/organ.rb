class Organ < ApplicationRecord
  validates :name, presence: true

  belongs_to :region
end
