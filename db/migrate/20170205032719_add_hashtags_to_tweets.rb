class AddHashtagsToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :hashtags, :jsonb, null: false, default: '{}'
    add_index  :tweets, :hashtags, using: :gin
  end
end
