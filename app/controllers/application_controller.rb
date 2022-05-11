class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user
  
  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
  
  def authenticate_user #「ユーザーの認証」という意味
    unless @current_user
      flash[:notice] = "ログインしてください。"
      redirect_to login_url
    end
  end
  
  def limitation_login_user
    if @current_user
      flash[:notice] = "すでにログイン状態です。"
      redirect_to posts_index_url
    end
  end
end
