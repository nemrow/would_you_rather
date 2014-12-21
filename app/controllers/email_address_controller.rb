class EmailAddressController < ApplicationController
  def create
    EmailAddress.create(email_address: params[:emailAddress])
    render json: {success: true}
  end
end
