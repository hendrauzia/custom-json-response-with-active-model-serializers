class Comments::IndexSerializer < CommentSerializer
  embed :ids, include: true
  has_one :user
end
