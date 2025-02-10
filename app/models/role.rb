class Role < ApplicationRecord
  validates :role_key, presence: true
  validates :name, presence: true, uniqueness: true
end
