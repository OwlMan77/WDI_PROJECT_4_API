class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_basal, :carbs_ratio
end
