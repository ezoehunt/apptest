class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.integer :id_str, :limit => 8, :null => false, unique: true
      t.timestamp :tweet_created_at, :null => false
      t.string :name, :null => false
      t.text :text, :null => false
      t.string :screen_name, :null => false
      t.text :profile_image_url_https, :null => false
      #t.jsonb :user_mentions, null: false, default: ''
      t.jsonb :user_mentions
      t.text :media_url_https
      #t.jsonb :hashtags
      t.jsonb :hashtags
      t.jsonb :urls
      t.timestamps
    end
  end
end
