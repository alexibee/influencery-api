class InfluencerTag < ApplicationRecord
  belongs_to :influencer
  belongs_to :tag

  validate :tag_is_not_the_same_as_primary_tag


  def tag_is_not_the_same_as_primary_tag
    if self.tag_id == self.influencer.primary_tag_id
      errors.add(:tag_id, "cannot be the same as influencer's primary tag")
    end
  end
end
