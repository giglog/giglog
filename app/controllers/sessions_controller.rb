class SessionsController < ApplicationController
  # def new
  # end

  # def create
  #   user = User.joins(:user_password).find_by('user_passwords.password = ?', params[:session][:password])
  #   if user.present?
  #     log_in user
  #     flash[:success] = 'ログインしました'
  #     redirect_to root_path
  #   else
  #     flash.now[:danger] = 'パスワードが間違っています'
  #     render 'new'
  #   end
  # end

  # def destroy
  #   log_out
  #   redirect_to root_path
  # end

end
