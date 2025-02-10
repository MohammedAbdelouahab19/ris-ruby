class Action < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true

  has_and_belongs_to_many :roles
end
