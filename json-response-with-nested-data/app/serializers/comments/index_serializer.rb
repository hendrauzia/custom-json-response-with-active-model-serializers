class Comments::IndexSerializer < CommentSerializer
  has_one :user
end
