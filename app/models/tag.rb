class Tag < ApplicationRecord
  has_many :influencer_tags, dependent: :destroy
end
