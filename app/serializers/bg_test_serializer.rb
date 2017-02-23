class BgTestSerializer < ActiveModel::Serializer
  attributes :bg_result, :date, :time, :readTime, :readDate
  def date
    object.date
  end
  def readTime
    object.time.strftime("%H:%M")
  end
  def readDate
    object.date.strftime("%d/%m/%Y")
  end
  def time
    object.time
  end
end
