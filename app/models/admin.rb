class Admin < ActiveRecord::Base
  has_secure_token :auth_token
end
