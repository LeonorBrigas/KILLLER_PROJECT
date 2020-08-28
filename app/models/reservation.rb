class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :assassin
  has_one :review

  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :status, inclusion: { in: ["Pending guest request", "Pending host validation", "Confirmed", "Canceled"], allow_nil: true }
end
