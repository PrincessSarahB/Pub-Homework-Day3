require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class CustomerTest < MiniTest::Test

def setup()
@drink = []
@customer = Customer.new("Bob", 50.00, @drink)

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


# def test_customer_buy_drink()
#
# end


end
