class Book < ActiveRecord::Base
    has_many :cart_items
end
