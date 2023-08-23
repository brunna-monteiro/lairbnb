class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :lair
  validate :end_date_greater_than_start_date

  def end_date_greater_than_start_date
    if end_date.present? && start_date.present? && end_date <= start_date
      errors.add(:end_date, "must be greater than the start date")
    end
  end

  
end
