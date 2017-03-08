class SecretsController < ApplicationController
  before_action :authorize

  def show
  end

  private
  def authorize
    unless is_logged_in?
      redirect_to new_session_path
    end
  end
end
