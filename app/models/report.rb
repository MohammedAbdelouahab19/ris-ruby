class Report < ApplicationRecord
  validates :status, presence: true
  validates :content, presence: true

  belongs_to :examination

  has_and_belongs_to_many :pathologies
end
