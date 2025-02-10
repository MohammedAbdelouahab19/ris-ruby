class Setting < ApplicationRecord
  validates :setting_key, presence: true
  validates :value, presence: true
end
