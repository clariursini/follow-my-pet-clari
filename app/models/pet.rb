class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :species_type
  has_many :clinical_histories
  has_many :appointments
  has_many :vaccinations, through: :clinical_histories
  has_many :studies, through: :clinical_histories

  has_one_attached :photo
end
