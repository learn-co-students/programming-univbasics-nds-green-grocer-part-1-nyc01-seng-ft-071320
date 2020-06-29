require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
   collection.each do |item|
     if(item[:item] == name)
        return item
     end
  end
  nil

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  receipt = []
  cart.each do |item|
    if(!find_item_by_name_in_collection(item[:item], receipt))
      item[:count] = 1
      receipt.push(item)
    else
      receipt.each do |receipt_item|
        if(receipt_item[:item] == item[:item])
          receipt_item[:count]+=1 
        end
    end
  end
end
  receipt
end


  