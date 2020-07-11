require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  return nil
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |item|
    if consolidated_cart.include? item
      item[:count] += 1
    else
      consolidated_cart << item
      item[:count] = 1
    end
  end
end
