class Company < ApplicationRecord
  validates_presence_of :name, :company_number
end
