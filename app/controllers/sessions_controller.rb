class SessionsController < ApplicationController
  def new
  end

  def create
    render plain: params.to_yaml
  end

  def destroy
  end
end
