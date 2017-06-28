class UsersController < ApplicationController
  decorates_assigned :user, :users

  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_user, except: [:index]
  before_action :ransack_set_search, except: [:show]

  def index
    @q = User.search(params[:query])
    @users = @q.result(distinct: true)
    @users = users_paginated(@users)
  end

private
  def find_user
    @user  = User.find(params[:id])
  end

  def ransack_set_search
    @q = User.search(params[:query])
    @users = @q.result(distinct: true)
  end

  def users_paginated(users)
    users.paginate(page: params[:page], per_page: 10)
  end
end
