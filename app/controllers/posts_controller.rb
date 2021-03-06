class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # binding.pry
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
  end

  private
  def post_params
    params.require(:post).permit(:title)
  end
end
