class HorrorSerializer < ActiveModel::Serializer
  attributes :id, :title, :format, :year, :descriptor, :votes
end
