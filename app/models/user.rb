class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :passenger_rides, :class_name => "Ride", :foreign_key => "passenger_id"
  has_many :driver_rides, :class_name => "Ride", :foreign_key => "driver_id"
end
