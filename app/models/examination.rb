class Examination < ApplicationRecord
  validates :patient_weight, presence: true

  belongs_to :patient
  belongs_to :service, optional: true
  belongs_to :nurse, optional: true
  belongs_to :Reanimator, optional: true
  belongs_to :corresponding, optional: true
  belongs_to :convention, optional: true
  belongs_to :prescriber, optional: true
  belongs_to :technical, optional: true
  belongs_to :radiologist, optional: true
end
