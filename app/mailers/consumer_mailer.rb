class ConsumerMailer < ApplicationMailer
  def notify_consumer(consumer)
    @consumer = Consumer.find(consumer)
    mail(to: @consumer.email, subject: "welcome")
  end
end
