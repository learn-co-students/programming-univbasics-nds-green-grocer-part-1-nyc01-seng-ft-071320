require 'pry'

# def find_item_by_name_in_collection(name, collection)
#   counter = 0
#   while counter < collection.length
#     if collection[counter][:item] == name
#       return collection[counter]
#     end
#     counter += 1
#   end
# end


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
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  results = []

  cart.each do |element|
    if results.include?(element)
      element[:count] += 1
    else
      element[:count] = 1
      results.push(element)
      binding.pry
  end
end
  return results
end
