class SessionsController < ApplicationController
  def create

    user = User.find_for_authentication(email: params[:email])
    if user && user.valid_password?(params[:password])
      render json: { id: user.id, name: user.name, email: user.email }, status: :created
    else
      render json: { error: "Invalid email or password" }, status: :unprocessable_entity
    end
  end
end
