class User < ApplicationRecord
  has_many :bg_tests
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
