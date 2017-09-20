class BlogsController < ApplicationController
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)

    redirect_to blog_path(@post)
  end

  def update
    @post = Post.find(params[:id]).update_attributes(post_params)

    redirect_to blog_path(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:id, :title, :body)
  end
end
