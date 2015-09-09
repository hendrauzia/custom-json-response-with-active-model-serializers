class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :links

  def links
    { self: comment_path(object.id) }
  end
end
