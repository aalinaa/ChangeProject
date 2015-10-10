# Preview all emails at http://localhost:3000/rails/mailers/confirm_email
class ConfirmEmailPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/confirm_email/received
  def received
    ConfirmEmail.received
  end

  # Preview this email at http://localhost:3000/rails/mailers/confirm_email/shipped
  def shipped
    ConfirmEmail.shipped
  end

end
