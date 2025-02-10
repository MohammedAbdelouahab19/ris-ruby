class Service < ApplicationRecord
  validates :name, presence: true

  belongs_to :establishment, optional: true
end
