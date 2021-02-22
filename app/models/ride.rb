class Ride < ApplicationRecord
    belongs_to :passenger, :class_name => "User"
    belongs_to :driver, :class_name => "User"
end
