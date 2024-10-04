class UserMailer < ApplicationMailer
    def confirmation_instructions(user, token, opts = {})
      @user = user
      @token = token
      mail(to: @user.email, subject: 'Confirmation Instructions')
    end
  end
  