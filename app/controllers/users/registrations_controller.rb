
class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if resource.persisted?
        redirect_to letter_opener_web_url and return
      end
    end
  end
end
