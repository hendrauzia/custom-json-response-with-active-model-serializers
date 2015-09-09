class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :links

  def links
    { self: user_path(object.id) }
  end
end
