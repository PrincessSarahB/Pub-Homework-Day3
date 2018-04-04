require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class DrinkTest < MiniTest::Test

def setup()

@drink1 = Drink.new("Vodka", 5.00, 4)
@drink2 = Drink.new("Beer", 3.00, 1)
@drink3 = Drink.new("Wine", 4.00 , 2)
@drink4 = Drink.new("Whisky", 6.00 , 3)

end


def test_drink_name()

assert_equal("Vodka", @drink1.drink_name)

end


def test_drink_price()

assert_equal(4.00 , @drink3.drink_price)
end

def test_alcohol_level()
assert_equal(4, @drink1.alcohol_level)

end


end
