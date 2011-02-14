class BlogsController < ApplicationController

  def index
    @title = "stolen shot news"

    @current_page = params[:page].nil? ? 1 : params[:page]
    @blogs = Blog.find(:all, :order => "modified_date desc").paginate(:page => @current_page, :per_page => 3)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blogs }
    end
  end

  def new
    @blog = Blog.new
    @blog.author = APP_CONFIG["global"]["author"]
    @blog.email = APP_CONFIG["global"]["email"]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blog }
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(params[:blog])
    @blog.create_date = Time.now
    @blog.modified_date = Time.now

    respond_to do |format|
      if @blog.save
        format.html { redirect_to(blogs_path, :notice => 'Blog was successfully created.') }
        format.xml  { render :xml => @blog, :status => :created, :location => @blog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.modified_date = Time.now

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        format.html { redirect_to(blogs_path, :notice => 'Blog was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to(blogs_url) }
      format.xml  { head :ok }
    end
  end
end
