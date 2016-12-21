class CognitoController < ApplicationController
	def index
		cogClient = Aws::CognitoIdentity::Client.new(
			region: 'us-west-2',
			access_key_id: ENV['AWS_ACCESS_KEY_ID'],
			secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'] 
		)
		resp = cogClient.get_open_id_token_for_developer_identity({
			identity_pool_id: 'us-west-2:02ccbc42-bd75-4fb2-9301-09f30a628349',
			logins: {
				"login.gallery" => "steelech@umich.edu"
			},
			token_duration: 120
		})
		data = {
			identity_id: resp.identity_id,
			token: resp.token
		}
		render json: data, status: 202
	end
end
