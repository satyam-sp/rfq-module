class Cart < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :customer, class_name: 'User'
  has_many    :cart_items
end
