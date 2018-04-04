require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class CustomerTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Vodka", 5.00, 4)
    @drink2 = Drink.new("Beer", 3.00, 1)
    @drink3 = Drink.new("Wine", 4.00 , 2)
    @drink4 = Drink.new("Whisky", 6.00 , 3)
    @drink = [@drink1, @drink2, @drink3, @drink4]
    @customer = Customer.new("Bob", 50.00, 40, 4)
    @pub = Pub.new("Harkin's bar", 100.00, @drink)

  end

  def test_customer_name()

    assert_equal("Bob" , @customer.customer_name)
  end

  def test_wallet_contents()

    assert_equal(50.00 , @customer.wallet_contents)
  end

  def test_customer_drink_count
    assert_equal(0,@customer.customer_drink_count)
  end


  def test_customer_drink_count_is_one()
    @customer.customer_gets_drink(@pub, @drink1, @customer)
    assert_equal(1, @customer.customer_drink_count())
  end

  def test_customer_gives_money_to_the_pub()
    @customer.customer_gives_money_to_the_pub(@drink1)
    assert_equal(45.00, @customer.wallet_contents)
  end

  def test_check_customer_age
    assert_equal(40, @customer.customer_age)
  end

  def test_customer_drunkeness()
    assert_equal(4, @customer.customer_drunkeness)

  end




end
