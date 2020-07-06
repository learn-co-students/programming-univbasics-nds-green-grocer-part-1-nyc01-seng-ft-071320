grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  cats=nil
  collection.each do |k|
    cats= k if k[:item]==name
  end
  # Consult README for inputs and outputs
cats
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart=[]

  cart.each do |k|
    count=0
    hodown=0
    while hodown <cart.length
      #if k[:item]=
      count+=1 if k[:item] == cart[hodown][:item]
      hodown+=1
    end
    new_cart<< k.merge(:count=>count) if find_item_by_name_in_collection(k[:item],new_cart) == nil
  end
  new_cart
end

#p find_item_by_name_in_collection("CANNED BEANS",grocery_shelf)
#p consolidate_cart(cart)
#p cart.include?'AVOCADO'
