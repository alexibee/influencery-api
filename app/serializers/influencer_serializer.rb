class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :handle, :platform, :followers, :profile_pic_url, :primary_tag, :tags

  def primary_tag
    Tag.find(object.primary_tag_id)
  end
end
