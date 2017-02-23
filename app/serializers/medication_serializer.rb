class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :patients

  def patients
    object.users.count
  end
end
