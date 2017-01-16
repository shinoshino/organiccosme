class CosmesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @cosmes = Cosme.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def destroy
    cosme = Cosme.find(params[:id])
    if cosme.user_id == current_user.id
      cosme.destroy
    end
  end

  def new
  end

  def create
    Cosme.create(image: cosme_params[:image], text: cosme_params[:text], user_id: current_user.id)
  end

  def edit
    @cosme = Cosme.find(params[:id])
  end

  def update
   cosme = Cosme.find(params[:id])
    if cosme.user_id == current_user.id
        cosme.update(cosme_params)
    end
  end

     private
    def cosme_params
      params.permit(:image, :text)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
