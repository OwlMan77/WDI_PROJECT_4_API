class BgTestSerializer < ActiveModel::Serializer
  attributes :id, :bg_result, :date, :time
  has_one :user_id
end
