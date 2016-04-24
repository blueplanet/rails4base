class BootstrapFormsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
    if Post.new(params.require(:post).permit(:title, :body, :draft, :published_at)).save
      redirect_to root_path
    else
      render :new
    end
  end
end
