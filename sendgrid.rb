#to use smtp for sendgrid generate a api key and usename="apikey"
#make deafult name as your email or it wont work.

config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  host = 'localhost:3000'
  config.action_mailer.default_url_options = { :host => 'localhost:3000', protocol: 'http' }
  
  config.action_mailer.smtp_settings = {
    :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
    :password => ENV['SECOND'], # This is the secret sendgrid API key which was issued during API key creation
    :domain => 'yourdomain.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
