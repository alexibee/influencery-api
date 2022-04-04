class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :handle, :platform, :followers, :profile_pic_url, :primary_tag_id, :tags

end
