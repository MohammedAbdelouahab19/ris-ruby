class Role < ApplicationRecord
  validates :role_key, presence: true
  validates :name, presence: true, uniqueness: true

  has_and_belongs_to_many :operations
end
