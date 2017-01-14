class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :set_params

  def set_params
  	puts request.body.try(:string)
	params.merge! ActiveSupport::JSON.decode(request.body.try(:string)) unless request.body.try(:string).nil? or request.body.try(:string) == ""
	puts params.inspect
  end
end
