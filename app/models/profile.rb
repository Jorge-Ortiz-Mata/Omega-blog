class Profile < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :birth, presence: true
  validates :gender, presence: true
  validate :validate_gender

  belongs_to :user

  private

  def validate_gender
    unless self.gender == 'Male' || self.gender == 'Female'
      errors.add(:gender, "was specified incorrectly")
    end
  end
end
