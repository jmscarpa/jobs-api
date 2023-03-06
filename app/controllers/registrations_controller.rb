class RegistrationsController < ApplicationController
  
  def create
    user = User.new(user_params)
    if user.save
      render json: { id: user.id, name: user.name, email: user.email }, status: :created
    else
      render json: { error: user.errors.full_messages.first }, status: :unprocessable_entity
    end
  end

  def user_params
    params.permit(:name, :email, :password)
  end

end
