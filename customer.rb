class Customer

def initialize(customer_name , wallet, drink)

@customer_name = customer_name
@wallet = wallet
@drink = []
end

def customer_name()

  return @customer_name

end

def wallet_contents()
return @wallet
end

def customer_drink_count()
return @drink.count
end

end
