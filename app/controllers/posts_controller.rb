class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order(:created_at)
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.create!(post_params)
    redirect_to post
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit; end

  def update; end

  def destroy; end
end
