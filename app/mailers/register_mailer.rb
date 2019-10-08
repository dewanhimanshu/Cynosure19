class RegisterMailer < ApplicationMailer

    def welcome_email
        @name = params[:name]
        @email  = params[:email]
        mail(to: @email, subject: 'Thankyou See you at Cynosure19')
      end
end
