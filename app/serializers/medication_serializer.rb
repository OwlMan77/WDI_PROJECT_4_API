class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :user_ids, through: :medications_users
end
