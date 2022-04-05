class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :handle, :platform, :followers, :profile_pic_url, :primary_tag, :tags

  def platform
    {
      id: object.platform.id,
      name: object.platform.name,
      base_url: object.platform.base_url
    }
  end

  def primary_tag
    tag = Tag.find(object.primary_tag_id)
    {id: tag.id, name: tag.name}
  end

  def tags
    new_format = object.tags.map do |x|
      x = {id: x.id, name: x.name}
    end
    new_format
  end
end
