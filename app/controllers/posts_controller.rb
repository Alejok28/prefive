class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,  except: [:index]
  before_action :edit_only_user_post, only: [:edit]

  def index
    @posts = Post.order("created_at DESC").subject(params[:subject]).teacher(params[:teacher]).college(params[:college]).paginate(:page => params[:page], :per_page => 10)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Tu publicación fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Tu publicación fue editada exitosamente.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Tu publicación fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:subject, :teacher, :score, :description,{files: []})
    end

    def edit_only_user_post
      post_user = Post.find(params[:id]).user
      if post_user != current_user
        redirect_to root_path, notice: "No tienes permisos para editar esa publicación"
      end
    end
end
