class CinemaSerializer < ApplicationSerializer
  attributes :id, :title, :numberInStock, :dailyRentalRate
  #set_type :cinema
  belongs_to :genre
end
