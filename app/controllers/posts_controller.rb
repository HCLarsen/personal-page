class PostsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
    if params[:id] = 0
      @post = Post.last
    else
      @post = Post.find(params[:id])
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
