class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :limitation_correct_user, only: [:edit, :update, :destroy]
  
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(
      content: params[:content],
      user_id: @current_user.id,
      )
    if @post.save
      flash[:notice] = "投稿しました！"
      redirect_to posts_index_url #コントローラー内で名前付きルーティングを記述場合、…_urlと記述
    else
      render :new
    end
  end
  
  def index
    @posts = Post.all.order(created_at: :desc)
    
  end
  
  def show
    @post = Post.find(params[:id])
    @user = @post.user # 9章9.5 Postモデルでuser定義後、@user = User.find(@post.user_id) を書き換え
  end
  
  def edit
    # @post = Post.find(params[:id]) ＃limitation_correct_userメソッドで実行されます
  end
  
  def update
    # @post = Post.find(params[:id]) ＃limitation_correct_userメソッドで実行されます
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました。"
      redirect_to posts_index_url
    else
      # redirect_to edit_post_url @post  # (@post.id)を　@post　とシンプル記述可能
      render :edit
    end
  end
  
  def destroy
    # @post = Post.find(params[:id]) ＃limitation_correct_userメソッドで実行されます
    @post.destroy
    flash[:notice] = "投稿を削除しました。"
    redirect_to posts_index_url
  end
  
  def limitation_correct_user
    @post = Post.find(params[:id])
    unless @post.user_id == @current_user.id
      flash[:notice] = "自分以外のユーザーの投稿は編集できません。"
      redirect_to posts_index_url
    end
  end
end