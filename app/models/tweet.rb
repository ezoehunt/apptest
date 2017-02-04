class Tweet < ApplicationRecord

  #serialize :hashtags, HashSerializer

  def before_import_save(record)
    # Your custom special sauce
  end

  def after_import_save(record)
    # Your custom special sauce
  end


validates :id_str, :presence => true, uniqueness: true
validates :tweet_created_at, :presence => true
validates :name, :presence => true
validates :text, :presence => true
validates :screen_name, :presence => true
validates :profile_image_url_https, :presence => true
#validates :user_mentions, :presence => true
#validates :media_url_https, :presence => true
#validates :hashtags, :presence => true
#validates :urls, :presence => true

#EOF
end
