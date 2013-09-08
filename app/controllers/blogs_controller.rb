class BlogsController < ApplicationController
  

  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to @blog
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def blog_params
      params[:blog].permit(:title, :contents)
    end

end
