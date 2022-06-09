class Order < ApplicationRecord
    has_many :join_table_item_orders
    has_many :items, through: :join_table_item_orders
    
    belongs_to :user
    validates :user_id, presence: true

    after_create :order_created

    def order_created
      UserMailer.order_confirmation(self).deliver_now
    end
  
end
