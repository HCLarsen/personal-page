require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(author: "Me", body: "Test Body")
  end

  test "Comment without a URL should validate" do
    assert @comment.valid?, "#{@comment.body.inspect} should be valid"
  end

  test "Comment with URL should not validate" do
    invalid_bodies = ["http://www.yahoo.com", "https://www.facebook.com", "http://rubygems.org"]
    invalid_bodies.each do |body|
      @comment.body = body
      assert_not @comment.valid?, "#{body.inspect} should be invalid"
    end
  end
end
