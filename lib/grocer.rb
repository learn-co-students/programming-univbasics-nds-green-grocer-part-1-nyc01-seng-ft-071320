# # require 'pry'

# #need to check for number or string in add and remove methods
# #need to add ability for user to enter number as well as string in lower as well as upper case
# #need to add total method
# #need to add checkout method
# #think about adding some api and using real store items


# def run(collection)
#   puts "Welcome to the Store. Your cart is currently empty."
#   puts "Please choose a command:" 
#   puts "help - display this list of commands"
#   puts "add - add an item to your shopping cart"
#   puts "remove - remove an item from your shopping cart"
#   puts "check - check the current contents of your shopping cart"
#   puts "exit - leave the store"
  
#   prompt(collection)
  
# end

# def prompt(collection)
#   cart = []

#   user_input = gets.strip

#   while user_input != "exit"
#     case user_input
#     when "add"
#       cart = add(collection, cart)
#       user_input = gets.strip
#     when "remove"
#       cart = remove(cart)
#       user_input = gets.strip
#     when "check"
#       check(cart)
#       user_input = gets.strip
#     when "help"
#       help
#       user_input = gets.strip
#     else
#       help
#       user_input = gets.strip
#     end
#   end

#   exit_store

# end

# def exit_store
#   puts "Thank you for shopping with us!"
# end

# def help
#   puts "Choose a command:"
#   puts "help - display this list of commands"
#   puts "add - add an item to your shopping cart"
#   puts "remove - remove an item from your shopping cart"
#   puts "check - check the current contents of your shopping cart"
#   puts "exit - leave the store"
# end

# def add(collection, cart)
#   puts "Choose an item from the shelf:"
#   list(collection)
#   user_input = gets.strip

#   collection.each{|a|
#     if a.has_value?(user_input)
#       cart.push(a)
#     end
#   }

#   cart
  
# end

# def list(items)
#   items.each_with_index{|item, index|
#     puts "#{index + 1}. #{item[:item]} - $#{item[:price]}\n"
#   }
# end

# def remove(cart)
#   puts "Choose an item from you cart to remove:"
#   list(cart)
#   user_input = gets.strip

#   cart.delete_if{|a|
#     a.has_value?(user_input)
#   }

# end

# def check(cart)
#   list(cart)
# end

# ------------------------------------------

def find_item_by_name_in_collection(name, collection)
  
  collection.select{|hash| hash.has_value?(name)}[0]
  

end


# def consolidate_cart(cart)

#   unconsolidated = cart

#   consolidated = []

#   i = 0

#   while i < cart.length

#     consolidated.push(cart[i])

#     find_item_by_name_in_collection(cart[i][:item], consolidated)[:counter] = unconsolidated.select{|hash| hash.has_value?(cart[0][:item])}.length

#     unconsolidated.delete_if{|hash| hash[:item] == cart[i][:item]}

#     i += 1

#   end
  
#   consolidated

# end

# def consolidate_cart(cart)
#   consolidated = cart

#   new_array = []

#   i = 0
#   counter = 0
#   while i < cart.length do
#     consolidated.each do |hash| 
#       if hash == cart[i]
#         counter += 1
#       end
#     end

#     if counter > 0
#       cart[i][:counter] = counter
#       new_array.push(cart[i])
#       consolidated.delete_if{|hash| hash[:item] == cart[i][:item]}
#       counter = 0
#     end

#     i += 1

#   end

#   new_array

# end

def consolidate_cart(cart)
  index = 0
  new_cart = []

  cart.each do |grocery_item|
    current_item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if current_item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item  
    end
    index += 1 #I think this is here for debugging reasons? ...
  end
  new_cart
end
  