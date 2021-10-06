class HorrorSerializer < ActiveModel::Serializer
  attributes :id, :title, :type, :year, :descriptor
end
