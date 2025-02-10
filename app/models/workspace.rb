class Workspace < ApplicationRecord
  validates :api_key, presence: true
end
