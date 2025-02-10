class ReportTemplate < ApplicationRecord
  validates :title, presence: true

  belongs_to :room

  has_and_belongs_to_many :organs
  has_and_belongs_to_many :radiologists, class_name: 'User'
end
