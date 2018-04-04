require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < MiniTest::Test

  def setup()

    @customer1 = Customer.new("Bob", 50.00, 40, 4)
    @customer2 = Customer.new("Maria", 20.00, 17, 0)
    @drink1 = Drink.new("Vodka", 5.00, 4)
    @drink2 = Drink.new("Beer", 3.00, 1)
    @drink3 = Drink.new("Wine", 4.00 , 2)
    @drink4 = Drink.new("Whisky", 6.00 , 3)
    @drink = [@drink1, @drink2, @drink3, @drink4]
    @pub = Pub.new("Harkin's bar", 100.00, @drink)
  end


  def test_pub_name()
    assert_equal("Harkin's bar" , @pub.pub_name)

  end

  def test_till()

    assert_equal(100.00, @pub.till)
  end

  def test_drink_count
    assert_equal(4, @pub.drink_count)
  end


  def test_pub_sell_drink_to_customer()
    @pub.sell_drink_to_customer(@drink1, @customer1)
    assert_equal(3, @pub.drink_count())
  end

  def test_pub_getting_money()
    @pub.pub_getting_money(@drink1)
    assert_equal(105.00, @pub.till)

  end

  def test_check_if_under_age()
    result = @pub.check_if_under_age(@customer2)
    assert_equal(false, result)
  end

end
