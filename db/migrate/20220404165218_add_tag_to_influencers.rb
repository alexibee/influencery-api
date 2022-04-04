class AddTagToInfluencers < ActiveRecord::Migration[6.0]
  def change
    add_reference :influencers, :primary_tag, null: false, foreign_key: { to_table: :tags }
  end
end
