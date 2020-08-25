class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :assassin

  validates :start_date, presence: true
  validates :end_date, presence: true
  #??? validates :status, inclusion:..... ???
end
