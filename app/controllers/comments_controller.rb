class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.build(comments_params)
    if @comment.save
      CommentsMailer.submitted(@comment).deliver_now
      flash[:success] = "Comment Posted"
    else
      if @comment.errors.any?
        @comment.errors.full_messages.each do |msg|
          flash[:error] = msg
        end
      end
    end
    redirect_to @post
  end

  private

    def set_post
      @post = Post.find(params[:post_id])
    end

    def comments_params
      params.required(:comment).permit(:author, :body)
    end
end
