class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == ''
      redirect_to '/sessions/new'
    elsif session[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  def show
    if current_user
      render '/secrets/index'
    else
      redirect_to '/'
    end

  end

end
