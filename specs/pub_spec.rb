require("minitest/autorun")
require('minitest/rg')
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")


class PubTest < MiniTest::Test

def setup()

  @pub = Pub.new("Harkin's bar", 100)





end
