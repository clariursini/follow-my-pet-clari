class ClinicalHistory < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  has_many :studies
  has_many :vaccinations
end
