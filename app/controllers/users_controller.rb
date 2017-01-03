class UsersController < ApplicationController
  def show
      @nickname = current_user.nickname
      @cosmes = Cosme.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end
end
