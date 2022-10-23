class PhotosController < ApplicationController

  def index
    @photo_list = Photo.all
    render({ :template => "/photo_templates/index.html.erb"})
  end

  def show
    @photo = Photo.where({ :id => params["photo_id"]})[0]
    render({ :template => "/photo_templates/show.html.erb"})
  end

  def delete
    del_photo = Photo.where({ :id => params["del_photo_id"]})[0]
    del_photo.destroy
    redirect_to("/photos")
  end

  def insert
    new_photo = Photo.new
    new_photo.image = params["image_url"]
    new_photo.caption = params["caption"]
    new_photo.owner_id = params["owner_id"]
    new_photo.save
    redirect_to("/photos/"+new_photo.id.to_s)
  end

  def update_photo
    photo_id = params["update_photo_id"]
    photo=Photo.where({:id => photo_id})[0]
    photo.image = params["image_url"]
    photo.caption = params["caption"]
    photo.save
    redirect_to("/photos/"+photo_id.to_s)
  end

  def insert_comment
    new_comment = Comment.new
    new_comment.photo_id= params["photo_id"]
    new_comment.author_id = params["author_id"]
    new_comment.body = params["comment"]
    new_comment.save
    redirect_to("/photos/"+new_comment.photo_id.to_s)

  end
end
