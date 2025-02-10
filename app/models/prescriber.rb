class Prescriber < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :title, presence: true

  belongs_to :structure
  belongs_to :speciality, optional: true
  belongs_to :service, optional: true
end
