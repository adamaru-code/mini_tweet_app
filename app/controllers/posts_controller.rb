class PostsController < ApplicationController
  
  def new
  end
  
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to posts_index_url #コントローラー内で名前付きルーティングを記述場合、…_urlと記述
  end
  
  def index
    @posts = Post.all.order(created_at: :desc)
    
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.content = params[:content]
    if @post.save
      redirect_to posts_index_url
    else
      redirect_to edit_post_url @post  # (@post.id)を　@post　とシンプル記述可能
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_index_url
  end
end