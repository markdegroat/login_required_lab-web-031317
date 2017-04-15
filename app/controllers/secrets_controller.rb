class SecretsController < ApplicationController
  before_action :require_login, only: [:index]

  def show
    if current_user
      render '/secrets/index'
    else
      redirect_to '/sessions/new'
    end

  end

  def index

  end

  def create
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
