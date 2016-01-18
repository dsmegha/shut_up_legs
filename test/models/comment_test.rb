require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   def setup
    @comment = Comment.new(name: "Example User", email: "user@example.com", subject: "adfasd", message: "a;sldkfja;woe")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "name should be present" do
    @comment.name = "     "
    assert_not @comment.valid?
  end

  test "email should be present" do
    @comment.email = "     "
    assert_not @comment.valid?
  end

  test "subject should be present" do
    @comment.subject = "     "
    assert_not @comment.valid?
  end

  test "message should be present" do
    @comment.message = "     "
    assert_not @comment.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @comment.email = valid_address
      assert @comment.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @comment.email = invalid_address
      assert_not @comment.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
end
