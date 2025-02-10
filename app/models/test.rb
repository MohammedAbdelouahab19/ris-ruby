class Test < ApplicationRecord
  validates :status, presence: true

  belongs_to :examination

  has_and_belongs_to_many :organs
end
