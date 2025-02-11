class User < ApplicationRecord
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :title, presence: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create

  belongs_to :role, optional: true

  has_and_belongs_to_many :report_templates
end
