class Order < ApplicationRecord
    belongs_to :user 
    has_many :items, optional: true
end
