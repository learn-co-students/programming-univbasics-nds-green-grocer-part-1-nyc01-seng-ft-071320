require "pry"

def find_item_by_name_in_collection(name, collection)
  selected_item = nil
  collection.each do |items|
    items.each do |item_name, price_details|
      if price_details == name
        selected_item = items
      end
    end
  end
  return selected_item
end


def consolidate_cart(cart)
  filtered_array = []
  cart.each do |item|
    target_item = find_item_by_name_in_collection(item[:item], filtered_array)
    if target_item
      target_item[:count] += 1
    else
      item[:count] = 1
      filtered_array << item
    end
  end
  return filtered_array
end

#   counted_cart = {}
#   cart.each do |item|
#     #counted_cart.each do |counted_name, counted_details|
#       if counted_cart[:item].has_key?(item[:item]) == true
#         counted_name[:count] = counted_name[:count] + 1
#       else
#         counted_cart.merge!(item)
#         counted_cart[:count] = 1
#       end
#       binding.pry
#       puts counted_cart
#     #end
#   end
#   return counted_cart
# end