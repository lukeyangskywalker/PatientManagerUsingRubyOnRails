class Encounter < ActiveRecord::Base
  # many to one to patient
  belongs_to :patient

  validates :visitNumber, presence: true
  validates :admittedAt, presence: true
end
