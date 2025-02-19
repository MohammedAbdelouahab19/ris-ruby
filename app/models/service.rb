class Service < ApplicationRecord
  validates :name, presence: true

  belongs_to :establishment, optional: true
  has_many :services, dependent: :destroy

  def self.ransackable_attributes(_auth_object = nil)
    %w[name]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[establishment]
  end
end
