class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = PostRepository.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    PostRepository.save(@post)

    respond_to do |format|
      if @post.persisted?
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    PostRepository.save(@post)
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      format.json { render :show, status: :ok, location: @post }
    end
  rescue
    respond_to do |format|
      format.html { render :edit }
      format.json { render json: @post.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    PostRepository.delete(@post)
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = PostRepository.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params[:post]
    end
end
