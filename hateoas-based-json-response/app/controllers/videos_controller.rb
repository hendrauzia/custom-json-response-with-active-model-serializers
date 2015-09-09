class VideosController < ApplicationController
  respond_to :json

  def index
    respond_with Video.order(created_at: :desc), each_serializer: Videos::IndexSerializer
  end

  def show
    respond_with nil
  end
end
