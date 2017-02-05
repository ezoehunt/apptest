class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.integer :id_str, :limit => 8, :null => false, unique: true
      t.timestamp :tweet_created_at, :null => false
      t.text :text, :null => false
      t.text :media_url_https

      t.string :name, :null => false
      t.string :screen_name, :null => false
      t.text :profile_image_url_https, :null => false

      #t.text :hashtags, array: true, default: []
      t.text :hashtags
      t.jsonb :urls
      t.jsonb :user_mentions, default: '{}'

      #t.text :hashtags, array: true

      t.timestamps
    end
  end
end
