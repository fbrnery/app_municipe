# Preview all emails at http://localhost:3000/rails/mailers/municipe_mailer
class MunicipeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/municipe_mailer/received
  def received
    MunicipeMailer.received
  end

  # Preview this email at http://localhost:3000/rails/mailers/municipe_mailer/shipped
  def shipped
    MunicipeMailer.shipped
  end

end
