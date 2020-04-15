class BookingSerializer < ActiveModel::Serializer
  attributes :id, :user, :showtime, :movie
end
