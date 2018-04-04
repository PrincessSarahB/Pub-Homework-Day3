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

def sell_drink_to_customer(drink)
@drink.delete(drink)
end


end
