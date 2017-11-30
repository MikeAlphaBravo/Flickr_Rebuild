class CommentsController < ApplicationController
  def index
    @photo = Photo.find(params[:id])
    @comments = @photo.comments
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @photo = Photo.find(params[:id])
    @comment = @photo.comments.new
  end

  def create
    @photo = Photo.find(params[:id])
    @comment = @photo.comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment succesfully added!"
      redirect_to photo_path
      # confirm photo_path is right
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    @comment = Comment.find(params[:photo_id])
  end

  def update
    @comment = Comment.find(params[:id])
    @photo = @comment.photo
    if @comment.update(comment_params)
      redirect_to comment_path
    else
      render :edit
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path(@photo)
  end

  private
    def comment_params
      params.require(:comment).permit(:text, :photo_id, :user_id)
    end
end
