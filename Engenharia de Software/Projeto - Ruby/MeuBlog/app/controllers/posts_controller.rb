class PostsController < ApplicationController
  # Action to display the form to create a new post
  def index
    @posts = Post.all  # Recupera todos os posts do banco de dados
  end
  def new
    @post = Post.new
  end

  # Action to create a new post
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  # Action to display a single post
  def show
    @post = Post.find(params[:id])
  end

  private

  # Only allow trusted parameters through
  def post_params
    params.require(:post).permit(:title, :content)
  end
end