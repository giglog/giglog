class UsersController < ApplicationController
  # def index
  #   @users = User.preload(:user_password).all.order(id: :desc)
  # end

  # def create
  #   # TODO: transaction -> 全てcreateにする
  #   @user = User.new
  #   @user.build_user_password(
  #     password:     UserPassword.unique_password,
  #     expire_date:  UserPassword.expire_date
  #   )
  #   @user.build_user_permission(
  #     user_type: User.user_types[:member]
  #   )
  #   if @user.save
  #     redirect_to admin_users_path
  #   else
  #     flash.now[:danger] = "ユーザーの作成に失敗しました。"
  #     render 'new'
  #   end
  # end
end
