class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def show
    user = User.find(session[:user_id])
    render json: user
  end

  private

  def render_not_found
    render json: { error: 'user not found' }, status: :not_found
  end
end
