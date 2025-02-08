class Examination < ApplicationRecord
  belongs_to :patient
  belongs_to :service
  belongs_to :nurse
  belongs_to :Reanimator
  belongs_to :corresponding
  belongs_to :convention
  belongs_to :prescriber
  belongs_to :technical
  belongs_to :radiologist
end
