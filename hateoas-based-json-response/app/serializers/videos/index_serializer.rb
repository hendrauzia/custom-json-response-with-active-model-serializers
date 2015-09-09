class Videos::IndexSerializer < VideoSerializer
  embed :ids, include: true
  has_one :user
end
