class ComplyAdvantagePep < ApplicationRecord
  validates_presence_of :person_name, :company_number
end
