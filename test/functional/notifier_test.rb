require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(:one))
    assert_equal "BodyBay Store Order Confirmation", mail.subject
    assert_equal ["vijay@unm.edu"], mail.to
    assert_equal ["Vijay@example.com"], mail.from
    #assert_match "Hi", mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped(orders(:one))
    assert_equal "BodyBay Store Order Shipped", mail.subject
    assert_equal ["vijay@unm.edu"], mail.to
    assert_equal ["Vijay@example.com"], mail.from
    #assert_match "Hi", mail.body.encoded
  end

end
