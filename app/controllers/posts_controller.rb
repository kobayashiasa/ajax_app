class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC") #降順
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    # redirect_to action: :index #投稿後にトップページにリダイレクトされる→編集
    render json:{ post: post }
  end
end
