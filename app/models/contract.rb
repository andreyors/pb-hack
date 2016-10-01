class Contract < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
    
    def pending_contracts
        Contract.where({status: false})
    end
end
