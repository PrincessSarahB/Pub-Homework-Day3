class Pub

  def initialize(pub_name , till, drink)

    @pub_name = pub_name
    @till = till
    @drink = drink

  end

  def pub_name()
    return @pub_name
  end


  def till()

    return @till
  end

  def drink_count()
    return @drink.count()
  end

  def sell_drink_to_customer(drink, customer)
    if check_if_under_age(customer)
      @drink.delete(drink)
    end
  end

  def pub_getting_money(drink)
    @till += drink.drink_price
  end

  def check_if_under_age(customer)
    age = customer.customer_age
  return age >= 18

    end
  end
