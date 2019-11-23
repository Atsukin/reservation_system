class Course < ApplicationRecord
    has_one_attached :image
    has_many :bookings
    belongs_to :admin
end