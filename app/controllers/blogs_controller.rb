class BlogsController < ApplicationController
  before_action :selected_blog, only: %i[edit update destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to root_url
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to root_url
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end

  def selected_blog
    @blog = Blog.find(params[:id])
  end
end
