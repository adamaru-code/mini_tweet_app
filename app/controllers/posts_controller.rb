class PostsController < ApplicationController
  
  def new
  end
  
  def create
    params[:content]
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to posts_index_url #コントローラー内で名前付きルーティングを記述場合、…_urlと記述
  end
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
end