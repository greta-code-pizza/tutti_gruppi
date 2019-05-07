class ConsumerMailer < ApplicationMailer
  def notify_consumer(consumer)
    @consumer = Consumer.find(consumer)
    mail(to: @consumer.email, subject: 'Votre commande Tutti Gruppi n°')
  end
end
