class User < ApplicationRecord
  has_many :bg_tests
  has_many :medications
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
