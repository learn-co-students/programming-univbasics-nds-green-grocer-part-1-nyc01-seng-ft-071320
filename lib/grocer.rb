def find_item_by_name_in_collection(name, collection)
  collection.each { |item|
    return item if item[:item] == name
  }
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  result = []
  
  cart.each { |item|
    if !find_item_by_name_in_collection(item[:item], result)
      item[:count] = 1
      result << item
    else
      result.each { |x|
        x[:count] += 1 if x[:item] == item[:item]
      }
    end  
  }
  
  result
end


  