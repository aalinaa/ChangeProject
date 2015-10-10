class Notifier < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.confirm_email.subject
  #
  default from: 'Stuff Exchange <alinahutsul@gmail.com>'

  def confirm_email(user)
    @greeting = "Hi, #{user.name}"

    mail to: user.email, subject: 'Confirm e-mail'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.restore_pass.subject
  #
  def restore_pass
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.new_request.subject
  #
  def new_request
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.new_message.subject
  #
  def new_message
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
