# Preview all emails at http://localhost:3000/rails/mailers/notifier
class NotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier/confirm_email
  def confirm_email
    Notifier.confirm_email
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifier/restore_pass
  def restore_pass
    Notifier.restore_pass
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifier/new_request
  def new_request
    Notifier.new_request
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifier/new_message
  def new_message
    Notifier.new_message
  end

end
