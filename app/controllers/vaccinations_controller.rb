class VaccinationsController < ApplicationController
  def index
    @pet = Pet.find(params[:id]).clinical_histories.id
    @vaccinations = Vaccination.where(clinical_history_id: @pet)
  end

  def new
    @vaccination = Vaccination.new
  end

  def create
    @vaccination = Vaccination.new(vaccination_params)
    @vaccination.clinical_history_id = Pet.find(params[:id]).clinical_histories
    if @vaccination.save
      redirect_to vaccinations_path
    else
      render 'vaccinations/new', status: :unprocessable_entity
    end
  end

  def edit
    @vaccination = Vaccination.find(params[:id])
  end

  def update
    @vaccination = Vaccination.find(params[:id])
    @vaccination.update(vaccination_params)
    redirect_to vaccinations_path
  end

  private

  def vaccination_params
    params.require(:vaccination).permit(:expiration_date, :photo, :vaccine_id)
  end

end
