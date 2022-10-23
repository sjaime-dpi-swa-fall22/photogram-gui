class PhotosController < ApplicationController

  def index
    @photo_list = Photo.all
    render({ :template => "/photo_templates/index.html.erb"})
  end

  def show
    @photo = Photo.where({ :id => params["photo_id"]})[0]
    render({ :template => "/photo_templates/show.html.erb"})
  end
end
