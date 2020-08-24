class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :assassin
end
#comment to test
