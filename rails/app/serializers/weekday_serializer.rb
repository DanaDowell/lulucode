class WeekdaySerializer < ActiveModel::Serializer
  embed :ids, include: true
  
  attributes :id, :name
  has_many :markets
end
