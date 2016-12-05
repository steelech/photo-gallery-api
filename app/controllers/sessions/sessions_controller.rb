class Sessions::SessionsController < Devise::SessionsController
	respond_to :html, :json

	def create
		super do |user|
			if request.format.json?
				data = {
					token: user.authentication_token,
					email: user.email
				}
				render json: data, status: 201 and return
			end
		end
	end
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
