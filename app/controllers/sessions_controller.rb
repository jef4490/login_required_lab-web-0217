class SessionsController < ApplicationController
  before_action :authorize, only: [:create]
  def new

  end

  def create
    # byebug
    session[:name] = params[:name]
    redirect_to secret_path
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_path
  end

  private

  def authorize
    unless params[:name] && !params[:name].empty?
      redirect_to new_session_path
    end
  end

end
