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
end