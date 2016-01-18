require 'test_helper'

class CommentsCreationTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get contactus_path
    assert_no_difference 'Comment.count' do
      post comments_path, comment: { name:  "",
                               email: "user@invalid",
                               subject:              "",
                               message: "bar" }
    end
    assert_template 'comments/new'
  end
end
