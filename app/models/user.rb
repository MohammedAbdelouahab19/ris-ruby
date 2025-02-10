class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :title, presence: true

  belongs_to :role, optional: true

  has_and_belongs_to_many :report_templates
end
