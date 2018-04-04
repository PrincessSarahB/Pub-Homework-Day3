require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class CustomerTest < MiniTest::Test

def setup()

@customer = Customer.new("Bob", 50.00)

end

def test_customer_name()

assert_equal("Bob" , @customer.customer_name)
end

def test_wallet_contents()

assert_equal(50.00 , @customer.wallet_contents)
end
end
