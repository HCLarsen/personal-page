class CommentsMailer < ApplicationMailer
  def submitted(comment)
    @comment = comment

    mail to: "clarsen@teksavvy.com", subject: "New comment on #{@comment.post.title}"
  end
end
