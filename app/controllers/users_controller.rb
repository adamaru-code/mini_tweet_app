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
    @user = User.find_by(email: params[:email], password: params[:password]) #find_byメソッドはカラムを指定してデータを取得する/findメソッドはidの値を指定してデータを取得する。（idのみ！）
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました。"
      redirect_to posts_index_url
    else
      @error_message = "メールアドレスまたはパスワードが間違っています。"
      @email = params[:email]
      @password = params[:password]
      render :login_page
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました。"
    redirect_to login_url
  end
end
