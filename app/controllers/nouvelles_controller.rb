class NouvellesController < ApplicationController
  before_action :set_nouvelle, only: [:edit, :update, :destroy]

  def new
    @nouvelle = Nouvelle.new
    authorize @nouvelle
  end

  def create
    @nouvelle = Nouvelle.new(nouvelle_params)
    @nouvelle.user = current_user
    if @nouvelle.save
      redirect_to nouvelles_path
    else
      render :new
    end
    authorize @nouvelle
  end

  def update
    @nouvelle.update(nouvelle_params)
    redirect_to nouvelles_path
    authorize @nouvelle
  end

  def destroy
    @nouvelle.destroy
    redirect_to nouvelles_path
    authorize @nouvelle
  end

  private

  def set_nouvelle
    @nouvelle = Nouvelle.find(params[:id])
  end

  def nouvelle_params
    params.require(:nouvelle).permit(:comment, :user)
  end
end
