class ToppagesController < ApplicationController
  def index
    if logged_in?
      @kadai-tasklist = current_user.kadai-tasklist.build  # form_with 用
      @kadai-tasklist = current_user.kadai-tasklist.order(id: :desc).page(params[:page])
    end
  end
end