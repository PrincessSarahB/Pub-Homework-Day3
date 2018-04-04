require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < MiniTest::Test

  def setup()

    @pub = Pub.new("Harkin's bar", 100)

  end


  def test_pub_name()
    assert_equal("Harkin's bar" , @pub.pub_name)

  end

def test_till()

assert_equal(100, @pub.till)
end


end
