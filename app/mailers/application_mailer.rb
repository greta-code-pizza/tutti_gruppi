class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.gmail[:username]
  # layout 'mailer'
end
