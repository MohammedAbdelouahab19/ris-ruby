class Organ < ApplicationRecord
  validates :name, presence: true

  belongs_to :region

  has_and_belongs_to_many :report_templates
  has_and_belongs_to_many :tests
end
