class BootstrapFormsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body, :draft, :published_at))
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end
end
