class Order < ApplicationRecord
    has_many :items, through: :join_table_item_orders

end
