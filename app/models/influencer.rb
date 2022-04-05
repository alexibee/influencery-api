class Influencer < ApplicationRecord
  belongs_to :platform
  has_many :influencer_tags, dependent: :destroy
  has_many :tags, through: :influencer_tags

  validate :primary_tag_is_not_in_secondary_tags


  def primary_tag_is_not_in_secondary_tags
    if self.influencer_tags.any? { |x| x.tag_id == self.primary_tag_id }
      errors.add(:primary_tag_id, "cannot be the same as one of the tags")
    end
  end

end
