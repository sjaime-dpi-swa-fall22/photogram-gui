class UsersController < ApplicationController
  
  def index
    @user_list=User.all.order({ :username => :asc })
    render ({:template => "user_templates/index.html.erb"})
  end
  
  def show
    @username=params["username"]
    user=User.where({:username => @username})[0]
    @image_list=user.own_photos
    render ({:template => "user_templates/show.html.erb"})
  end
end
