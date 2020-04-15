class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :description,:url, :showtimes
end
