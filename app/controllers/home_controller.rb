class HomeController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc).all
    @version = Rails.application.config.version
  end

  def about
  end

  def version
    msg = { :verison => Rails.application.config.version}
    render :json => msg
  end

  def ping
    head 200
  end
end
