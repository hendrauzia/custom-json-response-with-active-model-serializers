class CommentsController < ApplicationController
  respond_to :json

  def index
    comments = Comment.where(video_id: params[:video_id]).order(created_at: :desc)
    respond_with comments, each_serializer: Comments::IndexSerializer
  end
end
