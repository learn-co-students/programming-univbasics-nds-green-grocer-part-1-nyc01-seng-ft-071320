require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |element|
    element.each do |key, value|
      if value == name 
        return element
      end
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  result_array = []
  cart.each do |element|
    target_element = find_item_by_name_in_collection(element[:item], result_array)
    if target_element 
      target_element[:count] += 1 
    else 
      element[:count] = 1 
      result_array << element
    end
  end
  return result_array
end


  