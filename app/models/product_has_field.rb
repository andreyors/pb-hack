class ProductHasField < ActiveRecord::Base
    belongs_to :product
    belongs_to :field
end
