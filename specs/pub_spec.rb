require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < MiniTest::Test

  def setup()


    @drink1 = Drink.new("Vodka", 5.00)
    @drink2 = Drink.new("Beer", 3.00)
    @drink3 = Drink.new("Wine", 4.00 )
    @drink4 = Drink.new("Lemonade", 1.50)
@drink = [@drink1, @drink2, @drink3, @drink4]
    @pub = Pub.new("Harkin's bar", 100, @drink)
  end


  def test_pub_name()
    assert_equal("Harkin's bar" , @pub.pub_name)

  end

def test_till()

assert_equal(100, @pub.till)
end

def test_drink_count
  assert_equal(4, @pub.drink_count)
end


def test_pub_sell_drink_to_customer()
  @pub.sell_drink_to_customer(@drink1)
  assert_equal(3, @pub.drink_count())
end





end
