class Report < ApplicationRecord
  validates :status, presence: true
  validates :content, presence: true

  belongs_to :examination
end
