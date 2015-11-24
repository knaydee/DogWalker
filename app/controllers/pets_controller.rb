class PetsController < ApplicationController

  def new
    @pet = Pet.new
    @action = :create
  end

  def create
    @pet = Pet.create( pet_params[:pet] )
    redirect_to owners_path
  end

  private

  def pet_params
    params.permit(pet:[:name, :bio, :walk_frequency])
  end

end
