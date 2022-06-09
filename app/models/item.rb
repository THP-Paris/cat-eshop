class Item < ApplicationRecord
    has_many :join_table_items_carts, dependent: :nullify
    has_many :orders, through: :join_table_item_orders

end
