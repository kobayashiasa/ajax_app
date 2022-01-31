class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC") #降順
  end

  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index #投稿後にトップページにリダイレクトされる
  end
end
