class BgTestSerializer < ActiveModel::Serializer
  attributes :bg_result, :date, :time
  def date
    object.date.strftime("%m/%d/%Y")
  end
  def time
    "#{object.time.hour}:#{object.time.min}"
  end
end
