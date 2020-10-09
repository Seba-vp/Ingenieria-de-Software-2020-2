class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @posts_params = params.require(:post).permit(:title, :content, :picture)
    @post = Post.create(@posts_params)
    
    if @post.save

      redirect_to posts_new_path, notice: "Post creado correctamente."
    else
      redirect_to posts_new_path, notice: "Error al crear el post."

    end

  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
    @posts_params = params.require(:post).permit(:title, :content, :picture)


    if @post.update(@posts_params)

      redirect_to post_path(@post.id), notice: "Post editado correctamente."
    else
      redirect_to post_edit_path(@post.id), notice: "Error al editar el post."

    end

  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_index_path

  end
end
