#Add to development or production environment
#this one is based on mailgun sandbox smtp way
#can only send it to the invited mails or purchase their plans
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  host = 'localhost:3000'
  config.action_mailer.default_url_options = { :host => 'localhost:3000', protocol: 'http' }
  config.action_mailer.smtp_settings = {
    address:              'smtp.mailgun.org',
    port:                 587,
    domain:               'localhost.com',
    user_name:            ENV['MAILGUN_USER_NAME'],
    password:             ENV['MAILGUN_PASSWORD],
    authentication:       'plain',
    enable_starttls_auto: true,
    open_timeout:         5,
    read_timeout:         5 }
