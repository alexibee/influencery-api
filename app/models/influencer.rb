class Influencer < ApplicationRecord
  belongs_to :platform
  has_many :influencer_tags, dependent: :destroy
  has_many :tags, through: :influencer_tags

end
