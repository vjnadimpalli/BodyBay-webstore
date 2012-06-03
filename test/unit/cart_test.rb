require 'test_helper'

class CartTest < ActiveSupport::TestCase
  def setup
    @cart  = Cart.create
    @cream_one = products(:one)
    @cream_two  = products(:two)
  end
  
  test "add unique products" do
    @cart.add_product(@cream_one.id).save!
    @cart.add_product(@cream_two.id).save!
    assert_equal 2, @cart.line_items.size
    assert_equal @cream_one.price + @cream_two.price, @cart.total_price
  end

  test "add duplicate product" do
    @cart.add_product(@cream_one.id).save!
    @cart.add_product(@cream_one.id).save!
    assert_equal 2*@cream_one.price, @cart.total_price
    assert_equal 1, @cart.line_items.size
    assert_equal 2, @cart.line_items[0].quantity
  end 
end
