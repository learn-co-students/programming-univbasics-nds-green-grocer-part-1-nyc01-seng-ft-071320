require 'pry'

def find_item_by_name_in_collection(name, collection)
  return_hash = {}
  return_nil = nil 
  collection.each do |key, value|
    if key[:item] == name
      return_hash = key
    end 
  end
  if return_hash != {}
    return_hash
  else
    return_nil
  end  
end

def consolidate_cart(cart)
  final_array = []
  cart.each do |item_hash|
    target_item = find_item_by_name_in_collection(item_hash[:item], final_array)
    if target_item
      target_item[:count] += 1
    else
      item_hash[:count] = 1
      final_array << item_hash
    end
  end
  final_array
end


  