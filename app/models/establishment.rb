class Establishment < ApplicationRecord
  belongs_to :city
  belongs_to :report_template
end
