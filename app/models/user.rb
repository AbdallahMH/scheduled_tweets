# email:string
# password_digits: string
#
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  has_secure_password
end
