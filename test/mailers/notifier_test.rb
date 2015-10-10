require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "confirm_email" do
    mail = Notifier.confirm_email
    assert_equal "Confirm email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "restore_pass" do
    mail = Notifier.restore_pass
    assert_equal "Restore pass", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "new_request" do
    mail = Notifier.new_request
    assert_equal "New request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "new_message" do
    mail = Notifier.new_message
    assert_equal "New message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
