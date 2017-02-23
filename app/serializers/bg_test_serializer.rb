class BgTestSerializer < ActiveModel::Serializer
  attributes :bg_result, :date, :time
  def date
    object.date
  end
  def time
    object.time
  end
end
