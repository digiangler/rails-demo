class UsersController < ActionController::Base
  def index
    @users = User.all
  end
  #Ex:- add_index("admin_users", "username")
  def show
    @user = User.find(params['id'])
  end
end
