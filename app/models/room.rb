class Room < ApplicationRecord
  belongs_to :service
  belongs_to :modality
end
