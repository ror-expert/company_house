class Company < ApplicationRecord
  has_many :comply_advantage_news, dependent: :destroy
  has_many :comply_advantage_peps, dependent: :destroy

  validates_presence_of :name
end
