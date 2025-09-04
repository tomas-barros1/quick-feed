class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params.expect(comment: [:content]))

    if @comment.save
      redirect_to @post, notice: "Comment created!"
    else
      render :new, status: :unprocessable_entity
    end
  end
end