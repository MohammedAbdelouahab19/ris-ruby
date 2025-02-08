class Prescriber < ApplicationRecord
  belongs_to :structure
  belongs_to :speciality
  belongs_to :service
end
