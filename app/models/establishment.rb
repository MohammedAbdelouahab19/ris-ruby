class Establishment < ApplicationRecord
  validates :name, presence: true
  validates :invoice_number_pattern, presence: true
  validates :receipt_number_pattern, presence: true

  belongs_to :city
  belongs_to :report_template, optional: true
end
