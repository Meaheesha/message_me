class User < ApplicationRecord
  validates_uniqueness_of :username, presence: true, case_sensitive: false, length: { minimum: 3, maximum: 15}
  has_many :messages
  has_secure_password
end
