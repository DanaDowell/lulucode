class WednesdaySerializer < ActiveModel::Serializer
  attributes :id, :title, :street_address, :city, :time_opens, :time_closes, :food_stamps
end