class City < ApplicationRecord
  validates :name, presence: { message: I18n.t(Validator::NOT_BLANK) }
end
