class MunicipeMailer < ApplicationMailer

  default from: 'App Municipe <fbrnery@gmail.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(municipe)
    @municipe = municipe

    mail to: municipe.email, subject: 'APP Municipe Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped(municipe)
    @municipe = municipe

    mail to: municipe.email, subject: 'APP Municipe Order Shipped'
  end
end
