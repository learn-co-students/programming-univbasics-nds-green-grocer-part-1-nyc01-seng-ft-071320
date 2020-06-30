require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |element|
    element.each do |key,value|
      if name == value
          return element
      end
    end
  end
 return nil
end



def consolidate_cart(cart)
  results = []

  cart.each do |element|
    if results.include?(element)
      element[:count] += 1
    else
      element[:count] = 1
      results.push(element)
  end
end
  return results
end
