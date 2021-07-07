require 'pry'
def find_item_by_name_in_collection(name, collection)
  result = nil
  collection.each do |shelf|
    if name == shelf[:item]
      result = shelf
    end
  end
  result
end

def consolidate_cart(cart)
  result = []
  cart.each do |item|
    result.push(item)
    if item == item && item[:count] == 1
      item[:count] += 1
    else
      item[:count] = 1
    end
  end
  result
end


  