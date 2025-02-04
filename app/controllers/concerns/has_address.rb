module HasAddress
  extend ActiveSupport::Concern

  included do
    attribute :address, :string
  end
end
