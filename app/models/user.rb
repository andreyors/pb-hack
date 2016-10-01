class User < ActiveRecord::Base
    has_many :contracts
    validates :username, :uniqueness => true

    def has_field(field)
        FieldHasValue.where({user_id: self.id, field_id: resolveFieldId(field)}).map {|x| {field: x.field, value: x.value} }
    end
    
    def has_email(email)
        hasValueAtField(email, 'Email')
    end
    
    def resolveFieldId(field)
        Field.where({name: field}).first
    end
   
    def hasValueAtField(value, field)
        FieldHasValue.where({user_id: self.id, field_id: resolveFieldId(field), value: value}).count() > 0
    end
    
    def verify(data)
        User.where({username: data[:username], password: data[:password]})
    end
    
    def exists(username)
        User.exists?({username: username})
    end
end
