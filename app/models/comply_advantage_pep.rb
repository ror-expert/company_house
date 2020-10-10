class ComplyAdvantagePep < ApplicationRecord
  belongs_to :company

  validates_presence_of :person_name
end
