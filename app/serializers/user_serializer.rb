class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :id, :ideal_bg
  has_many :medications, through: :medications_users
end
