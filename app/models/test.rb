class Test < ApplicationRecord
  validates :status, presence: true

  belongs_to :examination
end
