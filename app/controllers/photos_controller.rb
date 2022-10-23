class PhotosController < ApplicationController

  def index
    @photo_list = Photo.all
    render({ :template => "/photo_templates/index.html.erb"})
  end

  def show
    render({ :template => "/photo_templates/show.html.erb"})
  end
end
