# model for patient
class Patient < ActiveRecord::Base
  # according to description
  # firstName, middleName, MRN cannot be null
  # (I think it should be lastName is required instead of middleName)
  validates :firstName, presence: true
  validates :middleName, presence: true
  validates :MRN, presence: true
end
