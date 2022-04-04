class Tag < ApplicationRecord
  has_many :influencer_tags
  has_one :influencer
end
