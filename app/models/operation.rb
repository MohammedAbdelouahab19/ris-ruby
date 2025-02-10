class Operation < ApplicationRecord
  validates :name, presence: true
  validates :operation_type, presence: true

  belongs_to :resource
end
