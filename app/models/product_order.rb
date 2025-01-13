class ProductOrders < ActiveRecord
  belongs_to :product
  belongs_to :order
end
