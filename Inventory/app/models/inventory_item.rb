class InventoryItem < ActiveRecord::Base
  belongs_to :product_type
  
  def self.sum_by_type(type_id)
    
    count_for_type = 0
    items = InventoryItem.where(product_type_id: type_id).find_each
    items.each do |item|
      count_for_type = count_for_type + item.qty
    end
    
    return count_for_type
  end
  
end
