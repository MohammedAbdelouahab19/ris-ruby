class Operation < ApplicationRecord
  validates :name, presence: true
  validates :operation_type, presence: true

  belongs_to :resource

  has_and_belongs_to_many :roles
end
