require 'test_helper'

class CommentsMailerTest < ActionMailer::TestCase
  def setup
    @comment = comments(:one)
  end

  test "submitted" do
    mail = CommentsMailer.submitted(@comment)
    assert_equal "New comment on First Post", mail.subject
    assert_equal ["clarsen@teksavvy.com"], mail.to
    assert_equal ["from@christianlarsen.ca"], mail.from
    assert_match "New Comment", mail.body.encoded
  end

end
