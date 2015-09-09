class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :links

  def links
    { self: video_path(object.id) }
  end
end
