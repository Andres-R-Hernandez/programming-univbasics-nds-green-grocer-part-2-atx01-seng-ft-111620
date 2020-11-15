require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart

  cart.each do |cart_item|
    coupons.each do |coupon_item|
      if cart_item[:name] == coupon_item[:name]
        new_cart_item = cart_item
        new_cart_item[:item] = cart_item[:item] + " W/COUPON"
        new_cart_item[:count] = cart_item[:count] / coupon_item[:num]
        new_cart_item[:price] = coupon_item[:price] / coupon_item[:num]
        cart << new_cart_item
        cart_item[:count] = cart_item[:count] % coupon_item[:num]
      end
    end
  end
cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
