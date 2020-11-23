class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.code_email.subject
  #
  def code_email(user, party_title, invitation_code)
    @user = user
    @party_title = party_title
    @invitation_code = invitation_code

    @title = "Hola " + String(@user.name) + "."
    @greeting1 = "Hola " + String(@user.name) + " fuiste seleccionado para la fiesta " + String(@party_title) + " ."
    @greeting2 = "Tu codigo de acceso es el siguiente: " + String(@invitation_code)

    mail to: String(@user.email), subject: "CarreteApp"
  end
end
