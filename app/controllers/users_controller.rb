class UsersController < ApplicationController
  def index
    @user_list=User.all.order({ :username => :asc })
    render ({:template => "user_templates/index.html.erb"})
  end
end
