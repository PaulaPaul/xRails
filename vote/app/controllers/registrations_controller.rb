class RegistrationsController < Devise::RegistrationsController
	protected

	def afer_sign_up_path_for(resource)
		"/voters/#{resource_.id}/edit"
	end
end
