class Remove < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :user_id
    remove_column :orders, :item_id
    add_reference :orders, :cart, foreign_key: true
  end
end
