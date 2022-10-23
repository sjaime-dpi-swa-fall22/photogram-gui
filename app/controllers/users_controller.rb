class UsersController < ApplicationController
  
  def index
    @user_list=User.all.order({ :username => :asc })
    render ({:template => "user_templates/index.html.erb"})
  end
  
  def show
    url_user=params["username"]
    @user=User.where({:username => url_user})[0]
    if @user == nil
      redirect_to("/404")
    else
      render ({:template => "user_templates/show.html.erb"})
    end
  end

  def insert
    new_user = User.new
    new_user.username = params["username"]
    new_user.save
    redirect_to("/users/"+ new_user.username)
  end

  def update_username
    user = User.where({:id => params["user_id"]})[0]
    user.username = params["username"]
    user.save
    redirect_to("/users/"+ user.username)
  end
end
