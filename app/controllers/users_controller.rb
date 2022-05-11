class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      name: params[:name], 
      email: params[:email], 
      image: "default.png",
    )
    if @user.save
      flash[:notice] = "ユーザーを新規登録しました！"
      redirect_to user_url @user
    else
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if params[:image]
      @user.image = "user_#{@user.id}.png"
      File.binwrite("public/user_images/#{@user.image}", params[:image].read)
    end
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました。"
      redirect_to user_url @user
    else
      render :edit
    end
  end
  
  def login_page
  end
  
  def login
  end
end
