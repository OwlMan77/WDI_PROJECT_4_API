class BgTestSerializer < ActiveModel::Serializer
  attributes :id, :bg_result, :date, :time
  has_one :user_id
  def date
    object.date.strftime("%m/%d/%Y")
  end
  def time
    "#{object.time.hour}:#{object.time.min}"
  end
end
