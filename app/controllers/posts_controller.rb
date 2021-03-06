class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all.order(created_at: :desc)
    @posts = @posts.select do |post|
      current_user.following.include?(post.user) || post.user == current_user
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:text, :title, :photo)
  end
end
