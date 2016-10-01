class Product < ActiveRecord::Base
    belongs_to :company
    has_many :contracts
    
    def required_fields
        ProductHasField.where({product_id: self.id}).map{|x| x.field }
    end
end
