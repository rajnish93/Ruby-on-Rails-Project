class GenreSerializer < ApplicationSerializer
  attributes :name ,:id
  has_many :cinemas #, if: Proc.new { |record| record.cinemas.any? } #, lazy_load_data: true, links: {

  #                     related: -> (object) {
  #                       "http://127.0.0.1:3000/cinemas/#{object.id}/"
  #                     },
  #                   }
end
