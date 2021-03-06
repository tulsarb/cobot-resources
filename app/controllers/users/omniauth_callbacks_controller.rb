class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def cobot
    @user = User.from_omniauth(request.env['omniauth.auth'])

    if @user.persisted?
      sign_in_and_redirect @user
      set_flash_message(:notice, :success, kind: '36°N') if is_navigational_format?
    else
      session['devise.cobot_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
