module HasName
  extend ActiveSupport::Concern

  included do
    validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: Validator::ONLY_LETTER }
  end
end
