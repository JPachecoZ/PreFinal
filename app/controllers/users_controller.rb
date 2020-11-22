class UsersController < ApplicationController
  skip_before_action :require_login!, only: :create
  # GET /profile
  def show
    render json: current_user
  end

  # POST /signup
  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profile
  def update
    if current_user.update(user_params)
      render json: current_user
    else
      render json: current_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profile
  delegate :destroy, to: :current_user

  private

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.permit(:email, :password, :first_name, :last_name, :phone)
  end
end
