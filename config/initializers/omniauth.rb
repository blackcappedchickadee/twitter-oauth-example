OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #puts "ENV['TWITTER_KEY'] = #{ENV['TWITTER_KEY']}"
  #puts "ENV['TWITTER_SECRET'] = #{ENV['TWITTER_SECRET']}"
  
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :jira, ENV['JIRA_KEY'], ENV['JIRA_SECRET']
end